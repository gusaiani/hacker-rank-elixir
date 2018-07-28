defmodule PickingNumbersTest do
  use ExUnit.Case

  test "Test picking_numbers with max of 3" do
    list = [4, 6, 5, 3, 3, 1]
    assert PickingNumbers.start(list) == 3
  end

  test "Test picking_numbers with max of 5" do
    list = [1, 1, 2, 2, 4, 4, 5, 5, 5]
    assert PickingNumbers.start(list) == 5
  end
end
