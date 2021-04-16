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

  def hexify(package) do
    case String.ends_with?(package, "ex") do
      true -> package
      false -> Hexify.name(package)
    end
  end
end
