defmodule MarsExploration do
  @moduledoc """
  Solve
  https://www.hackerrank.com/challenges/mars-exploration/problem
  """
  @base_string "SOS"

  def main(str) do
    str
    |> String.graphemes()
    |> count_wrong_chars()
  end

  defp count_wrong_chars(list) do
    {_, wrong_char_count} =
      Enum.reduce(list, {0, 0}, fn char, acc ->
        {index, count} = acc

        new_count = update_count(index, char, count)

        {index + 1, new_count}
      end)

    wrong_char_count
  end

  defp update_count(index, char, count) do
    char_to_compare = get_char_to_compare(index)

    case char_to_compare == char do
      true -> count
      false -> count + 1
    end
  end

  defp get_char_to_compare(index) do
    base_string_length = String.length(@base_string)
    char_position = rem(index, base_string_length)

    String.at(@base_string, char_position)
  end
end
