defmodule Uuid.Redact.Charlist5 do
  @moduledoc false

  @hex ~c(0123456789ABCDEFabcdef)
  @sep ?-
  @redact_as ~c":id"

  defguardp in_hex(c) when c in @hex

  def redact(input, redact_as \\ @redact_as),
    do:
      input
      |> :erlang.binary_to_list()
      |> redact([], redact_as)
      |> Enum.reverse()
      |> IO.iodata_to_binary()

  defp redact([], acc, _), do: acc

  defp redact(
         [
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
                                       c7
                                       | [
                                           @sep
                                           | [
                                               c8
                                               | [
                                                   c9
                                                   | [
                                                       c10
                                                       | [
                                                           c11
                                                           | [
                                                               @sep
                                                               | [
                                                                   c12
                                                                   | [
                                                                       c13
                                                                       | [
                                                                           c14
                                                                           | [
                                                                               c15
                                                                               | [
                                                                                   @sep
                                                                                   | [
                                                                                       c16
                                                                                       | [
                                                                                           c17
                                                                                           | [
                                                                                               c18
                                                                                               | [
                                                                                                   c19
                                                                                                   | [
                                                                                                       @sep
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
                                                                                                                                                   | [
                                                                                                                                                       c31
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
             ]
         ],
         acc,
         redact_as
       )
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
              in_hex(c30) and
              in_hex(c31),
       do: redact(tail, [redact_as | acc], redact_as)

  defp redact([c | tail], acc, redact_as), do: redact(tail, [c | acc], redact_as)
end
