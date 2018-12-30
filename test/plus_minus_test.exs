defmodule PlusMinusTest do
  use ExUnit.Case

  test "one plus_minus example" do
    arr = [1, 1, 0, -1, -1]
    assert PlusMinus.start(arr) == round_and_binary([0.400000, 0.400000, 0.200000])
  end

  test "another plus_minus example" do
    arr = [-4, 3, -9, 0, 4, 1]
    assert PlusMinus.start(arr) == round_and_binary([0.500000, 0.333333, 0.166667])
  end

  def round_and_binary(arr) do
    Enum.map(arr, fn n ->
      :erlang.float_to_binary(n, decimals: 6)
    end)
  end
end
