defmodule Uuid.Redact.Charlist do
  @moduledoc false

  # The first segment is 7 characters long instead of 8 as at least one char has already been read from the input string
  # when the scan starts.
  @segments [7, 4, 4, 4, 12]
  # The length of the UUID string with separators taking into account the first segment being 7 characters long.
  @uuid_len Enum.sum(@segments) + length(@segments) - 1
  @hex ~c"0123456789ABCDEFabcdef"
  @separator ?-
  @redact_as ~c":id"

  def redact(input, redact_as \\ @redact_as),
    do:
      input
      |> :erlang.binary_to_list()
      |> redact([], redact_as)
      |> Enum.reverse()
      |> IO.iodata_to_binary()

  defp redact([], acc, _), do: acc

  defp redact([c | rest], acc, redact_as) when c in @hex do
    case scan_uuid(rest, @segments, 0) do
      :match ->
        redact(Enum.drop(rest, @uuid_len), [redact_as | acc], redact_as)

      {:no_match, 0} ->
        redact(rest, [c | acc], redact_as)

      {:no_match, offset} ->
        {read, rest} = Enum.split(rest, offset)
        redact(rest, [[c | read] | acc], redact_as)
    end
  end

  defp redact([c | rest], acc, redact_as) do
    case scan_non_uuid(rest, 0) do
      0 ->
        redact(rest, [c | acc], redact_as)

      offset ->
        {read, rest} = Enum.split(rest, offset)
        redact(rest, [[c | read] | acc], redact_as)
    end
  end

  defp scan_uuid(_, [0], @uuid_len), do: :match
  defp scan_uuid([@separator | rest], [0 | tail], offset), do: scan_uuid(rest, tail, offset + 1)
  defp scan_uuid([_ | _], [0 | _], offset), do: {:no_match, offset}
  defp scan_uuid([c | rest], [n | tail], offset) when c in @hex, do: scan_uuid(rest, [n - 1 | tail], offset + 1)
  defp scan_uuid([_ | _], _, offset), do: {:no_match, offset}

  defp scan_non_uuid([], offset), do: offset
  defp scan_non_uuid([c | _], offset) when c in [@separator | @hex], do: offset
  defp scan_non_uuid([_ | rest], offset), do: scan_non_uuid(rest, offset + 1)
end
