defmodule DiagonalDifference do
  @moduledoc """
  Solve
  https://www.hackerrank.com/challenges/diagonal-difference/problem
  """

  def start(arr) do
    dimension = arr |> length |> :math.sqrt() |> trunc

    sum1 = sum_diagonal_1(arr, dimension)
    sum2 = sum_diagonal_2(arr, dimension)

    abs(sum1 - sum2)
  end

  defp sum_diagonal_1(arr, dimension) do
    items =
      for n <- Enum.to_list(0..(dimension - 1)) do
        index = n + dimension * n
        Enum.at(arr, index)
      end

    Enum.sum(items)
  end

  defp sum_diagonal_2(arr, dimension) do
    items =
      for n <- Enum.to_list(0..(dimension - 1)) do
        index = dimension - 1 - n + dimension * n
        Enum.at(arr, index)
      end

    Enum.sum(items)
  end
end
