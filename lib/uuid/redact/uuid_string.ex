defmodule Uuid.Redact.StringParse do
  @moduledoc false

  # The first segment is 7 characters long instead of 8 as at least one char has already been read from the input string
  # when the scan starts.
  @segments [7, 4, 4, 4, 12]
  # The length of the UUID string with separators taking into account the first segment being 7 characters long.
  @uuid_len Enum.sum(@segments) + length(@segments) - 1
  @hex ~w(0 1 2 3 4 5 6 7 8 9 A B C D E F a b c d e f)
  @separator "-"
  @redact_as ":id"

  def redact(input, redact_as \\ @redact_as),
    do:
      input
      |> redact([], redact_as)
      |> Enum.reverse()
      |> IO.iodata_to_binary()

  defp redact(<<>>, acc, _), do: acc

  defp redact(<<c::binary-1, rest::binary>>, acc, redact_as) when c in @hex do
    case scan_uuid(rest, @segments, 0) do
      :match ->
        <<_::binary-size(@uuid_len), rest::binary>> = rest
        redact(rest, [redact_as | acc], redact_as)

      {:no_match, 0} ->
        redact(rest, [c | acc], redact_as)

      {:no_match, offset} ->
        <<read::binary-size(offset), rest::binary>> = rest
        redact(rest, [[c | read] | acc], redact_as)
    end
  end

  defp redact(<<c::binary-1, rest::binary>>, acc, redact_as) do
    case scan_non_uuid(rest, 0) do
      0 ->
        redact(rest, [c | acc], redact_as)

      offset ->
        <<read::binary-size(offset), rest::binary>> = rest
        redact(rest, [[c | read] | acc], redact_as)
    end
  end

  defp scan_uuid(<<_::binary>>, [0], @uuid_len), do: :match
  defp scan_uuid(<<@separator, rest::binary>>, [0 | tail], offset), do: scan_uuid(rest, tail, offset + 1)
  defp scan_uuid(<<_::binary>>, [0 | _], offset), do: {:no_match, offset}

  defp scan_uuid(<<c::binary-1, rest::binary>>, [n | tail], offset) when c in @hex,
    do: scan_uuid(rest, [n - 1 | tail], offset + 1)

  defp scan_uuid(<<_::binary>>, _, offset), do: {:no_match, offset}

  defp scan_non_uuid(<<>>, offset), do: offset
  defp scan_non_uuid(<<c::binary-1, _::binary>>, offset) when c in [@separator | @hex], do: offset
  defp scan_non_uuid(<<_::binary-1, rest::binary>>, offset), do: scan_non_uuid(rest, offset + 1)
end
