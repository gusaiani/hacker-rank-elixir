defmodule CavityMap do
  @moduledoc """
  Solve https://www.hackerrank.com/challenges/cavity-map/problem

  """
  def main(string) do
    string
    |> convert_to_list()
    |> check_row()
    |> convert_to_string()
  end

  defp convert_to_list(string) do
    string
    |> String.split("\n", trim: true)
    |> Enum.map(&row_to_array/1)
  end

  defp row_to_array(string) do
    string
    |> String.split("", trim: true)
    |> chars_to_ints()
  end

  defp chars_to_ints(list) do
    Enum.map(list, fn char ->
      {int, _} = Integer.parse(char)
      int
    end)
  end

  defp check_row([h | t]) do
    check_row([h] ++ t, [h])
  end

  defp check_row([h | [n | [t1 | t2]]], acc) do
    treated = treat(h, n, t1)
    check_row([n] ++ [t1] ++ t2, acc ++ [treated])
  end

  defp check_row([h | [n | t]], acc) do
    treated = treat(h, n, t)
    check_row([n] ++ t, acc ++ [treated])
  end

  defp check_row([h | []], acc) do
    acc
  end

  defp treat(h, n, t) do
    {_, treated} = Enum.reduce(n, {0, []}, fn item, acc ->
      {index, new_list} = acc

      new_item = cond do
        index == 0 -> item
        index == (length(n) - 1) -> item
        Enum.at(n, index) < Enum.at(h, index) -> item
        Enum.at(n, index) < Enum.at(t, index) -> item
        Enum.at(n, index) < Enum.at(n, index - 1) -> item
        Enum.at(n, index) < Enum.at(n, index + 1) -> item
        true -> "X"
      end

      {index + 1, new_list ++ [new_item]}
    end)

    treated
  end

  defp convert_to_string(list) do
    list
    |> Enum.map(&convert_all_to_string/1)
    |> Enum.join("\n")
  end

  defp convert_all_to_string(list) do
    Enum.map(list, fn char ->
      case char do
        "X" -> "X"
        int -> Integer.to_string(int)
      end
    end)
  end
end
