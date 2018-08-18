defmodule MarsExplorationTest do
  use ExUnit.Case

  test "one plus_minus example" do
    assert MarsExploration.main("SOSSPSSQSSOR") == 3
  end
end
