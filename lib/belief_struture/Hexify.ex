defmodule BeliefStructure.Hexify do
  @moduledoc false

  @doc """
  Adds the "_ex" suffix to the package name if necessary.

  ## Examples

      iex> BeliefStructure.Heify.name("math")
      "math_ex"
  """
  @doc since: "0.1.0"
  @spec name(String.t()) :: String.t()
  def name(package) do
    package(package)
  end

  @spec package(String.t()) :: String.t()
  defp package(package) do
    package <> "_ex"
  end
end
