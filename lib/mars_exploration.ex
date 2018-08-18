defmodule MarsExploration do
  @moduledoc """
  Solve
  https://www.hackerrank.com/challenges/mars-exploration/problem
  """
  @base_string "SOS"

  def main(str) do
    str
    |> String.graphemes()
    |> countWrongChars()
  end

  defp countWrongChars(list) do
    base_string_length = String.length(@base_string)

    %{wrong_char_count: wrong_char_count} = Enum.reduce(list, %{index: 0, wrong_char_count: 0}, fn (char, acc) ->
      %{index: index, wrong_char_count: wrong_char_count} = acc

      char_to_compare =
        @base_string
        |> String.at(rem(index, base_string_length))

      wrong_char_count = case char_to_compare == char do
        true -> wrong_char_count
        false -> wrong_char_count + 1
      end

      %{index: index + 1, wrong_char_count: wrong_char_count}
    end)

    wrong_char_count
  end
end
