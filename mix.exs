defmodule Ordeal.MixProject do
  use Mix.Project

  def project do
    [
      app: :ordeal,
      version: "1.0.0",
      elixir: "~> 1.5",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Ordeal",
      source_url: "https://github.com/supersimple/ordeal"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp description() do
    """
     Turns integers into ordinal strings.
     ex. 81 -> eighty-first

     For ordinal numbers (ex. 81st) use the Ordinal package for Inflex package.
    """
  end

  defp package() do
    [
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/supersimple/ordeal"}
    ]
  end
end
