defmodule Uuid.Redact.Charlist3 do
  @moduledoc false

  @hex ~c(0123456789ABCDEFabcdef)
  @separator ?-
  @hex_and_sep ~c(-0123456789ABCDEFabcdef)
  @redact_as ~c":id"

  defguardp in_hex(c) when c in @hex
  defguardp not_in_sep_or_hex(c) when c not in @hex_and_sep

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

  defp scan_hex_4([c0 | [c1 | [c2 | [c3 | tail]]]])
       when in_hex(c0) and
              in_hex(c1) and
              in_hex(c2) and
              in_hex(c3),
       do: tail

  defp scan_hex_4(_), do: :no_match

  defp scan_hex_7([c0 | [c1 | [c2 | [c3 | [c4 | [c5 | [c6 | tail]]]]]]])
       when in_hex(c0) and
              in_hex(c1) and
              in_hex(c2) and
              in_hex(c3) and
              in_hex(c4) and
              in_hex(c5) and
              in_hex(c6),
       do: tail

  defp scan_hex_7(_), do: :no_match

  defp scan_hex_12([c0 | [c1 | [c2 | [c3 | [c4 | [c5 | [c6 | [c7 | [c8 | [c9 | [c10 | [c11 | tail]]]]]]]]]]]])
       when in_hex(c0) and
              in_hex(c1) and
              in_hex(c2) and
              in_hex(c3) and
              in_hex(c4) and
              in_hex(c5) and
              in_hex(c6) and
              in_hex(c7) and
              in_hex(c8) and
              in_hex(c9) and
              in_hex(c10) and
              in_hex(c11),
       do: tail

  defp scan_hex_12(_), do: :no_match

  defp scan_sep([@separator | tail]), do: tail
  defp scan_sep(_input), do: :no_match

  defp scan_uuid(input) do
    input
    |> scan_hex_7()
    |> scan_sep()
    |> scan_hex_4()
    |> scan_sep()
    |> scan_hex_4()
    |> scan_sep()
    |> scan_hex_4()
    |> scan_sep()
    |> scan_hex_12()
  end

  defp split_non_uuid([c | tail], acc) when not_in_sep_or_hex(c), do: split_non_uuid(tail, [c | acc])
  defp split_non_uuid(tail, acc), do: {acc |> Enum.reverse(), tail}
end
