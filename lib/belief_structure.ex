defmodule BeliefStructure do
  @moduledoc """
  Documentation for `BeliefStructure`.
  """
  alias BeliefStructure.Hexify

  @doc """
  Hello world.

  ## Examples

      iex> BeliefStructure.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Adds the "_ex" suffix to the package name if necessary.

  ## Examples

      iex> BeliefStructure.hexify("math_ex")
      "math_ex"

  """
  @doc since: "0.1.0"
  @spec hexify(String.t()) :: String.t()
  def hexify(package) do
    case String.ends_with?(package, "ex") do
      true -> package
      false -> Hexify.name(package)
    end
  end
end
