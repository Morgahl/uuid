defmodule Uuid.Redact.Charlist2 do
  @moduledoc false

  # The 0th segment is 7 characters long instead of 8 as at least one char has already been read from the input string
  # when the scan starts.
  @seg0 7
  @seg1 4
  @seg2 4
  @seg3 4
  @seg4 12
  @nums ?0..?9
  @upper_hex ?A..?F
  @lower_hex ?a..?f
  @separator ?-
  @redact_as ~c":id"

  defguardp in_hex(c) when c in @nums or c in @upper_hex or c in @lower_hex
  defguardp not_in_sep_or_hex(c) when c != @separator and not in_hex(c)

  def redact(input, redact_as \\ @redact_as),
    do:
      input
      |> :erlang.binary_to_list()
      |> redact([], redact_as)
      |> Enum.reverse()
      |> IO.iodata_to_binary()

  defp redact([], acc, _), do: acc

  defp redact([c | tail], acc, redact_as) when in_hex(c) do
    case scan_uuid(tail) do
      :no_match ->
        {read, tail} = split_non_uuid(tail, [c])
        redact(tail, [read | acc], redact_as)

      tail ->
        redact(tail, [redact_as | acc], redact_as)
    end
  end

  defp redact([c | tail], acc, redact_as) do
    {read, tail} = split_non_uuid(tail, [c])
    redact(tail, [read | acc], redact_as)
  end

  defp scan_hex(tail, 0), do: tail
  defp scan_hex([c | tail], n) when in_hex(c), do: scan_hex(tail, n - 1)
  defp scan_hex(_input, _counter), do: :no_match

  defp scan_sep([@separator | tail]), do: tail
  defp scan_sep(_input), do: :no_match

  defp scan_uuid(input) do
    input
    |> scan_hex(@seg0)
    |> scan_sep()
    |> scan_hex(@seg1)
    |> scan_sep()
    |> scan_hex(@seg2)
    |> scan_sep()
    |> scan_hex(@seg3)
    |> scan_sep()
    |> scan_hex(@seg4)
  end

  defp split_non_uuid([c | tail], acc) when not_in_sep_or_hex(c), do: split_non_uuid(tail, [c | acc])
  defp split_non_uuid(tail, acc), do: {acc |> Enum.reverse(), tail}
end
