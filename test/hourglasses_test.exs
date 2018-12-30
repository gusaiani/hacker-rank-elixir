defmodule HourglassesTest do
  use ExUnit.Case

  test "greets the world" do
    largest_sum =
      """
      1 1 1 0 0 0
      0 1 0 0 0 0
      1 1 1 0 0 0
      0 0 2 4 4 0
      0 0 0 2 0 0
      0 0 1 2 4 0
      """
      |> String.trim()
      |> String.split([" ", "\n"])
      |> Enum.map(fn item ->
        {int, ""} = Integer.parse(item)
        int
      end)
      |> Hourglasses.largest_sum()

    assert largest_sum == 19
  end
end
