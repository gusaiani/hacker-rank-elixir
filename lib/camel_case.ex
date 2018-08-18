defmodule CamelCase do
  @moduledoc """
  Solve
  https://www.hackerrank.com/challenges/camelcase/problem
  """

  def start(str) do
    str
    |> String.graphemes()
    |> countUpperCaseChars()
    |> increment()
  end

  defp countUpperCaseChars(graphemes) do
    Enum.reduce(graphemes, 0, fn char, acc -> incrementIfUpcase(char, acc) end)
  end

  defp incrementIfUpcase(char, acc) do
    case String.downcase(char) == char do
      true -> acc
      false -> acc + 1
    end
  end

  defp increment(num), do: num + 1
end
