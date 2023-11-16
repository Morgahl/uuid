# TODO: I want to explore turning this into a "live runner" framework that runs in iex and handles runs as they are
# requested in the iex session.

# TODO: Detect code changes and recompile the module after gracefully halting running tests or benchmarks before liver
# reloading and retriggering any defined test suites or benchmarks.

# TODO: explore a simple use style module for decorating a function with automatic test, dbg, or bench runs to be
# automatically picked up and updated by the test runner.

defmodule Test do
  @moduledoc false
  import Test.Macros

  @slug ":id"

  @concated "3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0af47ac10b-58cc-4372-a567-0e02b2c3d4793d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa"
  def concated(_ \\ :test)
  def concated(:test), do: run_test("Concated UUIDs", @concated, @slug)
  def concated(:dbg), do: run_dbg("Concated UUIDs", @concated, @slug)
  def concated(:bench), do: run_bench("Concated UUIDs", @concated, @slug, exp10(1, 1000))
  def concated(:profile), do: run_profile("Concated UUIDs", @concated, @slug)

  @no_match "GHIL MOPQ/ghil mopq[GHI LMO)PQgh\tilm\nopq GHI LMO PQgh*ilm opq GHI LMO PQgh ilm opq GHI%LMO PQgh ilm opq GHI;"
  def no_match(_ \\ :test)
  def no_match(:test), do: run_test("No Match", @no_match, @slug)
  def no_match(:dbg), do: run_dbg("No Match", @no_match, @slug)
  def no_match(:bench), do: run_bench("No Match", @no_match, @slug, exp10(1, 1000))
  def no_match(:profile), do: run_profile("No Match", @no_match, @slug)

  @no_match_hex "3d5b8e4e08e2a04a7d09e3f06f8e1b2c9d0af47ac10b058cc043720a56700e02b2c3d4793d5b8e4e08e2a04a7d09e3f06f8e1b2c9daa"
  def no_match_hex(_ \\ :test)
  def no_match_hex(:test), do: run_test("No Match", @no_match_hex, @slug)
  def no_match_hex(:dbg), do: run_dbg("No Match", @no_match_hex, @slug)
  def no_match_hex(:bench), do: run_bench("No Match", @no_match_hex, @slug, exp10(1, 1000))
  def no_match_hex(:profile), do: run_profile("No Match", @no_match_hex, @slug)

  @no_match_sep "------------------------------------------------------------------------------------------------------------"
  def no_match_sep(_ \\ :test)
  def no_match_sep(:test), do: run_test("No Match", @no_match_sep, @slug)
  def no_match_sep(:dbg), do: run_dbg("No Match", @no_match_sep, @slug)
  def no_match_sep(:bench), do: run_bench("No Match", @no_match_sep, @slug, exp10(1, 1000))
  def no_match_sep(:profile), do: run_profile("No Match", @no_match_sep, @slug)

  @plain_en "This function can be used to extract 3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a from URLs or any other binary string that follows the f47ac10b-58cc-4372-a567-0e02b2c3d479 format."
  def plain_en(_ \\ :test)
  def plain_en(:test), do: run_test("Plain English", @plain_en, @slug)
  def plain_en(:dbg), do: run_dbg("Plain English", @plain_en, @slug)
  def plain_en(:bench), do: run_bench("Plain English", @plain_en, @slug, exp10(1, 1000))
  def plain_en(:profile), do: run_profile("Plain English", @plain_en, @slug)

  @url_path "https://www.test.com/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a/f47ac10b-58cc-4372-a567-0e02b2c3d479/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa/test.index"
  def url_path(_ \\ :test)
  def url_path(:test), do: run_test("URL Path", @url_path, @slug)
  def url_path(:dbg), do: run_dbg("URL Path", @url_path, @slug)
  def url_path(:bench), do: run_bench("URL Path", @url_path, @slug, exp10(1, 1000))
  def url_path(:profile), do: run_profile("URL Path", @url_path, @slug)

  @url_path_bad "https://www.test.com/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a-----f47ac10b-58cc-4372-a567-0e02b2c3d479b3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa/test.index"
  def url_path_bad(_ \\ :test)
  def url_path_bad(:test), do: run_test("URL Path Bad", @url_path_bad, @slug)
  def url_path_bad(:dbg), do: run_dbg("URL Path Bad", @url_path_bad, @slug)
  def url_path_bad(:bench), do: run_bench("URL Path Bad", @url_path_bad, @slug, exp10(1, 1000))
  def url_path_bad(:profile), do: run_profile("URL Path Bad", @url_path_bad, @slug)

  def same(a, a), do: :same

  def once(), do: [1]

  def range(start, stop, step \\ 1), do: Enum.to_list(start..stop//step)

  def exp(start..stop//factor) when start > 0 and stop >= start and factor > 1, do: exp(start, stop, factor, [])
  def exp(start, stop, factor) when start > 0 and stop >= start and factor > 1, do: exp(start, stop, factor, [])

  def exp2(start..stop) when start > 0 and stop >= start, do: exp(start, stop, 2, [])
  def exp2(start, stop) when start > 0 and stop >= start, do: exp(start, stop, 2, [])

  def exp10(start..stop) when start > 0 and stop >= start, do: exp(start, stop, 10, [])
  def exp10(start, stop) when start > 0 and stop >= start, do: exp(start, stop, 10, [])

  defp exp(start, stop, _, acc) when start > stop, do: reverse_and_trunc(acc, [])
  defp exp(start, stop, factor, acc), do: exp(start * factor, stop, factor, [start | acc])

  defp reverse_and_trunc([], acc), do: acc
  defp reverse_and_trunc([h0 | t], [h1 | _] = acc) when trunc(h0) == h1, do: reverse_and_trunc(t, acc)
  defp reverse_and_trunc([h | t], acc), do: reverse_and_trunc(t, [trunc(h) | acc])
end
