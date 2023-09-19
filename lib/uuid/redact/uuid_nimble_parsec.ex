defmodule Uuid.Redact.NimbleParsec do
  @moduledoc false
  import NimbleParsec

  @nums ?0..?9
  @hex_upper ?A..?F
  @hex_lower ?a..?f
  @hex_ranges [@nums, @hex_upper, @hex_lower]
  @sep ?-
  @sep_ranges [@sep]

  uuid =
    ascii_string(@hex_ranges, 8)
    |> ascii_char(@sep_ranges)
    |> ascii_string(@hex_ranges, 4)
    |> ascii_char(@sep_ranges)
    |> ascii_string(@hex_ranges, 4)
    |> ascii_char(@sep_ranges)
    |> ascii_string(@hex_ranges, 4)
    |> ascii_char(@sep_ranges)
    |> ascii_string(@hex_ranges, 12)

  defparsecp :uuid,
             uuid |> eventually(),
             inline: true

  defparsecp :redacted,
             choice([
               uuid |> replace(":id"),
               utf8_char([])
             ])
             |> repeat(),
             inline: true

  def match?(input) do
    case uuid(input) do
      {:ok, _, _, _, _, _} -> true
      {:error, _, _, _, _, _} -> false
    end
  end

  def redact(input) do
    case redacted(input) do
      {:ok, redacted, _, _, _, _} -> {:ok, IO.iodata_to_binary(redacted)}
      {:error, reason, _, _, _, _} -> {:error, reason}
    end
  end

  def redact!(input) do
    case redact(input) do
      {:ok, redacted} -> redacted
      {:error, reason} -> raise reason
    end
  end
end
