defmodule Uuid.MixProject do
  use Mix.Project

  def project do
    [
      app: :uuid,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Uuid.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchee_html, "~> 1.0", only: :dev},
      {:benchee_markdown, "~> 0.3", only: :dev},
      {:benchee, "~> 1.0", only: :dev},
      {:ecto_sql, "~> 3.10"},
      {:nimble_parsec, "~> 1.0"}
    ]
  end
end
