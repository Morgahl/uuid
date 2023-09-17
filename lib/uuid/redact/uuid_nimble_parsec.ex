defmodule Uuid.Redact.NimbleParsec do
  @moduledoc false
  import NimbleParsec

  @hex_ranges [?0..?9, ?A..?F, ?a..?f]
  @segments [8, 4, 4, 4, 12]
  @sep_ranges [?-]

  uuid =
    ascii_string(@hex_ranges, @segments |> Enum.at(0))
    |> ascii_char(@sep_ranges)
    |> ascii_string(@hex_ranges, @segments |> Enum.at(1))
    |> ascii_char(@sep_ranges)
    |> ascii_string(@hex_ranges, @segments |> Enum.at(2))
    |> ascii_char(@sep_ranges)
    |> ascii_string(@hex_ranges, @segments |> Enum.at(3))
    |> ascii_char(@sep_ranges)
    |> ascii_string(@hex_ranges, @segments |> Enum.at(4))

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
