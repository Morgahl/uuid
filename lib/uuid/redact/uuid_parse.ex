defmodule Uuid.Redact.Parse do
  @moduledoc """
  This module is used to extract and replace UUIDs from a binary string.
  """

  @hex_chars ~w(- 0 1 2 3 4 5 6 7 8 9 A B C D E F a b c d e f)

  @doc """
  Returns a tuple containing the binary string with UUIDs replaced and a list of UUIDs found.

  ## Parameters

  - binary: any binary string value you want to parse for UUIDs
  - replacement: the string you want to replace the UUIDs with, nil by default, which will leave the UUIDs in place

  ## Examples

      iex> UUIDFinder.parse("This function can be used to extract 3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a from URLs or any other binary string that follows the f47ac10b-58cc-4372-a567-0e02b2c3d479 format.", "[UUID]")
      {
        "This function can be used to extract [UUID] from URLs or any other binary string that follows the [UUID] format.",
        ["3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a","f47ac10b-58cc-4372-a567-0e02b2c3d479"]
      }

      iex> UUIDFinder.parse("https://www.test.com/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a/f47ac10b-58cc-4372-a567-0e02b2c3d479/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa/test.index", "[UUID]")
      {
        "https://www.test.com/[UUID]/[UUID]/[UUID]/test.index",
        ["3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a","f47ac10b-58cc-4372-a567-0e02b2c3d479","3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa"]
      }

      iex> UUIDFinder.parse("https://www.test.com/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a/f47ac10b-58cc-4372-a567-0e02b2c3d479/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa/test.index")
      {
        "https://www.test.com/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a/f47ac10b-58cc-4372-a567-0e02b2c3d479/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa/test.index",
        ["3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a","f47ac10b-58cc-4372-a567-0e02b2c3d479","3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa"]
      }
  """
  def parse(binary, replacement \\ nil, str \\ <<>>, uuid \\ <<>>, uuids \\ [])

  def parse(
        binary,
        nil,
        str,
        <<_::binary-size(8), "-", _::binary-size(4), "-", _::binary-size(4), "-", _::binary-size(4), "-",
          _::binary-size(12)>> = uuid,
        uuids
      ),
      do: parse(binary, nil, str <> uuid, <<>>, [uuid | uuids])

  def parse(
        binary,
        replacement,
        str,
        <<_::binary-size(8), "-", _::binary-size(4), "-", _::binary-size(4), "-", _::binary-size(4), "-",
          _::binary-size(12)>> = uuid,
        uuids
      ),
      do: parse(binary, replacement, str <> replacement, <<>>, [uuid | uuids])

  def parse(<<>>, _, str, _, uuids), do: {str, Enum.reverse(uuids)}

  def parse(<<c::binary-size(1), rest::binary>>, replacement, str, acc, uuids) when c in @hex_chars,
    do: parse(rest, replacement, str, <<acc <> c>>, uuids)

  def parse(<<c::binary-size(1), rest::binary>>, replacement, str, acc, uuids),
    do: parse(rest, replacement, <<str <> acc <> c>>, <<>>, uuids)
end
