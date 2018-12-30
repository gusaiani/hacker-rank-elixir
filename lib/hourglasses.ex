defmodule Hourglasses do
  @moduledoc """
  Solves
  https://www.hackerrank.com/challenges/2d-array/problem
  """

  @doc """
  Iterates all possible `hourglasses` and returns the one with
  the largest sum of items.
  """

  def largest_sum(list) do
    list
    |> maxes
    |> Enum.max()
  end

  def maxes(list) do
    max_sum = nil
    dimension = dimension(list)

    for i <- 0..(dimension - 3), j <- 0..(dimension - 3) do
      sum = sum(list, i + j * dimension)
      new_max_sum(sum, max_sum)
    end
  end

  def dimension(list) do
    list |> length |> :math.sqrt() |> trunc
  end

  def index_modifiers(dimension) do
    [0, 1, 2, dimension + 1, dimension * 2, dimension * 2 + 1, dimension * 2 + 2]
  end

  def sum(list, first_index) do
    dimension = dimension(list)
    modifiers = index_modifiers(dimension)

    Enum.reduce(modifiers, 0, fn modifier, acc ->
      acc + Enum.at(list, first_index + modifier)
    end)
  end

  def new_max_sum(sum, nil), do: sum
  def new_max_sum(sum, max_sum) when sum > max_sum, do: sum
  def new_max_sum(_, max_sum), do: max_sum
end
