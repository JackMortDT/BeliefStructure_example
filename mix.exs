defmodule BeliefStructure.MixProject do
  use Mix.Project

  def project do
    [
      app: :belief_structure,
      dialyzer: [plt_add_deps: :app_tree],
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :jason]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.5.5", only: [:dev], runtime: false},
      {:dialyxir, "~> 1.1", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.21.3", only: :dev, runtime: false},
      {:inch_ex, github: "rrrene/inch_ex", only: [:dev, :test]}
    ]
  end

  def aliases do
    [code_review: [
      "dialyzer",
      "credo --strict",
      "docs",
      "inch"
    ]]
  end
end
