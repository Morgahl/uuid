defmodule CompileTimeGuardOptimization do
  # @moduledoc false

  # @seg0 8
  # @nums ?0..?9
  # @upper_hex ?A..?F
  # @lower_hex ?a..?f
  # @separator ?-
  # @redact_as ~c":id"

  # defmacro in_set(c, set) do
  #   set
  #   |> explode()
  #   |> compile()

  #   quote do
  #     unquote(c) == unquote(c)
  #   end
  # end

  # defp explode(set), do: explode([set], [])
  # defp explode([], acc), do: compile(acc)
  # defp explode([[_ | _] = head | tail], acc), do: explode(head, acc) |> then(explode(tail))
  # defp explode([[] | tail], acc), do: explode(tail, acc)
  # defp explode([e | tail], acc), do: explode(tail, [eval_item(e) | acc])

  # defp eval_item({:@, _ctx, _sub} = a), do: eval_item(Macro.expand(a, __ENV__))
  # defp eval_item({:.., _ctx, [start, stop]}), do: start..stop
  # defp eval_item({:"..//", _ctx, [start, stop, step]}), do: start..stop//step
  # defp eval_item({:sigil_c, _ctx, _sub} = c), do: Macro.expand(c, __ENV__)
  # defp eval_item({:sigil_w, _ctx, _sub} = w), do: Macro.expand(w, __ENV__)
  # defp eval_item(s) when is_binary(s), do: s
  # defp eval_item(n) when is_integer(n), do: n
  # defp eval_item(c), do: raise("Unsupported set item #{inspect(c)}")

  # defp compile(e), do: dbg(e)

  # # c == e
  # defp test_in_set(c) when in_set(c, 123), do: true
  # defp test_in_set(c) when in_set(c, ?9), do: true
  # defp test_in_set(c) when in_set(c, "0123456789"), do: true
  # defp test_in_set(c) when in_set(c, ~c(0123456789*)), do: true
  # defp test_in_set(c) when in_set(c, ~w(0 1 2 3 4 5 6 7 8 9*)), do: true
  # defp test_in_set(c) when in_set(c, @nums), do: true
  # defp test_in_set(c) when in_set(c, ?0..?9), do: true
  # # defp test_in_set(c) when in_set(c, "0".."9"), do: true
  # defp test_in_set(c) when in_set(c, 0..9), do: true
  # defp test_in_set(c) when in_set(c, 0..9//2), do: true
  # defp test_in_set(c) when in_set(c, [?0..?9]), do: true
  # defp test_in_set(c) when in_set(c, [?0..?9, ?A..?F, ?a..?f]), do: true
end
