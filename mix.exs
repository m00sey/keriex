defmodule Core.MixProject do
  use Mix.Project

  def project do
    [
      app: :keriex,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:blake3, "~> 0.4.1"},
      {:enacl, "~> 1.1"},
      {:fast64, "~> 0.1.3"},
      {:redix, ">= 0.0.0"},
      {:castore, ">= 0.0.0"}
    ]
  end
end