defmodule DiagonalDifferenceTest do
  use ExUnit.Case

  test "one diagonal difference" do
    arr = Enum.to_list(1..9)
    assert DiagonalDifference.start(arr) == 0
  end

  test "another diagonal difference" do
    arr = [1, 2, 3, 4, 5, 6, 9, 8, 9]
    assert DiagonalDifference.start(arr) == 2
  end
end
