defmodule BeliefStructure.Hexify do
  @moduledoc false
  def name(package) do
    package(package)
  end

  defp package(package) do
    package <> "_ex"
  end
end
