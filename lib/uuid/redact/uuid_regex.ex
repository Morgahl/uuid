defmodule Uuid.Redact.RegEx do
  @moduledoc false

  @uuid ~r/([0-9A-Za-f]{8}-[0-9A-Za-f]{4}-[0-9A-Za-f]{4}-[0-9A-Za-f]{4}-[0-9A-Za-f]{12})/
  @slug ":id"

  def redact(input, slug \\ @slug) do
    Regex.replace(@uuid, input, slug)
  end
end
