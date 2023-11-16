defmodule Test.Macros do
  alias Uuid.Redact.Charlist
  alias Uuid.Redact.Charlist2
  alias Uuid.Redact.Charlist3
  alias Uuid.Redact.Charlist4
  alias Uuid.Redact.Charlist5
  alias Uuid.Redact.Charlist6
  alias Uuid.Redact.NimbleParsec
  alias Uuid.Redact.NimbleParsec2
  alias Uuid.Redact.Parse
  alias Uuid.Redact.RegEx
  alias Uuid.Redact.StringParse

  @inspect_opts [prety: true, syntax_colors: IO.ANSI.syntax_colors()]

  defmacro print_test_header(name, input, slug) do
    quote location: :keep do
      input = unquote(input)
      slug = unquote(slug)
      name = unquote(name)

      IO.puts("""
      Name: #{inspect(name, unquote(@inspect_opts))}
      Input: #{inspect(input, unquote(@inspect_opts))}
      Slug: #{inspect(slug, unquote(@inspect_opts))}
      """)
    end
  end

  defmacro run_and_print_test(name, test) do
    quote location: :keep do
      IO.puts("#{inspect(unquote(name), unquote(@inspect_opts))}:")
      IO.inspect(unquote(test), unquote(@inspect_opts))
      IO.puts("")
    end
  end

  defmacro run_and_dbg_test(test) do
    quote location: :keep do
      dbg(unquote(test))
    end
  end

  defmacro run_test(name, input, slug) do
    quote location: :keep do
      input = unquote(input)
      slug = unquote(slug)
      print_test_header(unquote(name), input, slug)
      run_and_print_test("Charlist.redact/2", Charlist.redact(input, slug))
      run_and_print_test("Charlist2.redact/2", Charlist2.redact(input, slug))
      run_and_print_test("Charlist3.redact/2", Charlist3.redact(input, slug))
      run_and_print_test("Charlist4.redact/2", Charlist4.redact(input, slug))
      run_and_print_test("Charlist5.redact/2", Charlist5.redact(input, slug))
      run_and_print_test("Charlist6.redact/2", Charlist6.redact(input, slug))
      run_and_print_test("NimbleParsec.redact!/1", NimbleParsec.redact!(input))
      run_and_print_test("NimbleParsec2.redact!/1", NimbleParsec2.redact!(input))
      run_and_print_test("Parse.parse/2", Parse.parse(input, slug) |> elem(0))
      run_and_print_test("RegEx.redact/2", RegEx.redact(input, slug))
      run_and_print_test("StringParse.redact/2", StringParse.redact(input, slug))
    end
  end

  defmacro run_dbg(name, input, slug) do
    quote location: :keep do
      input = unquote(input)
      slug = unquote(slug)
      print_test_header(unquote(name), input, slug)
      run_and_dbg_test(Charlist.redact(input, slug))
      run_and_dbg_test(Charlist2.redact(input, slug))
      run_and_dbg_test(Charlist3.redact(input, slug))
      run_and_dbg_test(Charlist4.redact(input, slug))
      run_and_dbg_test(Charlist5.redact(input, slug))
      run_and_dbg_test(Charlist6.redact(input, slug))
      run_and_dbg_test(NimbleParsec.redact!(input))
      run_and_dbg_test(NimbleParsec2.redact!(input))
      run_and_dbg_test(Parse.parse(input, slug) |> elem(0))
      run_and_dbg_test(RegEx.redact(input, slug))
      run_and_dbg_test(StringParse.redact(input, slug))
    end
  end

  defmacro run_bench(name, input, slug, iterations) do
    quote location: :keep do
      name = unquote(name)
      iterations = unquote(iterations)
      max_iter_len = Enum.max(iterations) |> Integer.to_string() |> String.length()
      input = unquote(input)
      slug = unquote(slug)

      inputs =
        for n <- iterations,
            into: %{},
            do: {
              "#{inspect(name, unquote(@inspect_opts))} (#{String.pad_leading("x#{Integer.to_string(n)}", max_iter_len + 1, " ")})",
              String.duplicate(input, n)
            }

      Benchee.run(
        %{
          "Charlist.redact/2" => fn input -> Charlist.redact(input, slug) end,
          "Charlist2.redact/2" => fn input -> Charlist2.redact(input, slug) end,
          "Charlist3.redact/2" => fn input -> Charlist3.redact(input, slug) end,
          "Charlist4.redact/2" => fn input -> Charlist4.redact(input, slug) end,
          "Charlist5.redact/2" => fn input -> Charlist5.redact(input, slug) end,
          "Charlist6.redact/2" => fn input -> Charlist6.redact(input, slug) end,
          "NimbleParsec.redact!/1" => fn input -> NimbleParsec.redact!(input) end,
          "NimbleParsec2.redact!/1" => fn input -> NimbleParsec2.redact!(input) end,
          "Parse.parse/2" => fn input -> Parse.parse(input, slug) |> elem(0) end,
          "RegEx.redact/2" => fn input -> RegEx.redact(input, slug) end,
          "StringParse.redact/2" => fn input -> StringParse.redact(input, slug) end
        },
        inputs: inputs,
        warmup: 1,
        time: 5,
        memory_time: 2,
        reduction_time: 2,
        pre_check: true,
        formatters: [{Benchee.Formatters.Console, extended_statistics: true}]
      )

      :ok
    end
  end

  defmacro run_profile(name, input, slug) do
    quote location: :keep do
      name = unquote(name)
      input = unquote(input)
      slug = unquote(slug)

      Benchee.run(
        %{
          "Charlist.redact/2" => fn input -> Charlist.redact(input, slug) end,
          "Charlist2.redact/2" => fn input -> Charlist2.redact(input, slug) end,
          "Charlist3.redact/2" => fn input -> Charlist3.redact(input, slug) end,
          "Charlist4.redact/2" => fn input -> Charlist4.redact(input, slug) end,
          "Charlist5.redact/2" => fn input -> Charlist5.redact(input, slug) end,
          "Charlist6.redact/2" => fn input -> Charlist6.redact(input, slug) end,
          "NimbleParsec.redact!/1" => fn input -> NimbleParsec.redact!(input) end,
          "NimbleParsec2.redact!/1" => fn input -> NimbleParsec2.redact!(input) end,
          "Parse.parse/2" => fn input -> elem(Parse.parse(input, slug), 0) end,
          "RegEx.redact/2" => fn input -> RegEx.redact(input, slug) end,
          "StringParse.redact/2" => fn input -> StringParse.redact(input, slug) end
        },
        inputs: %{"#{inspect(name, unquote(@inspect_opts))} (profile)" => input},
        warmup: 0,
        time: 0,
        pre_check: true,
        profile_after: true,
        formatters: [{Benchee.Formatters.Console, []}]
      )

      :ok
    end
  end
end
