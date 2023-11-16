defmodule Uuid.Redact.Charlist4 do
  @moduledoc false

  @hex ~c(0123456789ABCDEFabcdef)
  @sep ?-
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
    case scan_hex_7_4_4_4_12(tail) do
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

  # 01234567-89AB-CDEF-0123-456789ABCDEF
  #             1 1111 1111 122222222223
  #  0123456 7890 1234 5678 901234567890

  defp scan_hex_7_4_4_4_12([
         c0
         | [
             c1
             | [
                 c2
                 | [
                     c3
                     | [
                         c4
                         | [
                             c5
                             | [
                                 c6
                                 | [
                                     @sep
                                     | [
                                         c7
                                         | [
                                             c8
                                             | [
                                                 c9
                                                 | [
                                                     c10
                                                     | [
                                                         @sep
                                                         | [
                                                             c11
                                                             | [
                                                                 c12
                                                                 | [
                                                                     c13
                                                                     | [
                                                                         c14
                                                                         | [
                                                                             @sep
                                                                             | [
                                                                                 c15
                                                                                 | [
                                                                                     c16
                                                                                     | [
                                                                                         c17
                                                                                         | [
                                                                                             c18
                                                                                             | [
                                                                                                 @sep
                                                                                                 | [
                                                                                                     c19
                                                                                                     | [
                                                                                                         c20
                                                                                                         | [
                                                                                                             c21
                                                                                                             | [
                                                                                                                 c22
                                                                                                                 | [
                                                                                                                     c23
                                                                                                                     | [
                                                                                                                         c24
                                                                                                                         | [
                                                                                                                             c25
                                                                                                                             | [
                                                                                                                                 c26
                                                                                                                                 | [
                                                                                                                                     c27
                                                                                                                                     | [
                                                                                                                                         c28
                                                                                                                                         | [
                                                                                                                                             c29
                                                                                                                                             | [
                                                                                                                                                 c30
                                                                                                                                                 | tail
                                                                                                                                               ]
                                                                                                                                           ]
                                                                                                                                       ]
                                                                                                                                   ]
                                                                                                                               ]
                                                                                                                           ]
                                                                                                                       ]
                                                                                                                   ]
                                                                                                               ]
                                                                                                           ]
                                                                                                       ]
                                                                                                   ]
                                                                                               ]
                                                                                           ]
                                                                                       ]
                                                                                   ]
                                                                               ]
                                                                           ]
                                                                       ]
                                                                   ]
                                                               ]
                                                           ]
                                                       ]
                                                   ]
                                               ]
                                           ]
                                       ]
                                   ]
                               ]
                           ]
                       ]
                   ]
               ]
           ]
       ])
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
              in_hex(c11) and
              in_hex(c12) and
              in_hex(c13) and
              in_hex(c14) and
              in_hex(c15) and
              in_hex(c16) and
              in_hex(c17) and
              in_hex(c18) and
              in_hex(c19) and
              in_hex(c20) and
              in_hex(c21) and
              in_hex(c22) and
              in_hex(c23) and
              in_hex(c24) and
              in_hex(c25) and
              in_hex(c26) and
              in_hex(c27) and
              in_hex(c28) and
              in_hex(c29) and
              in_hex(c30),
       do: tail

  defp scan_hex_7_4_4_4_12(_), do: :no_match

  defp split_non_uuid([c | tail], acc) when not_in_sep_or_hex(c), do: split_non_uuid(tail, [c | acc])
  defp split_non_uuid(tail, acc), do: {acc |> Enum.reverse(), tail}
end
