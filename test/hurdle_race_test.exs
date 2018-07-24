defmodule HurdleRaceTest do
  use ExUnit.Case

  test "greets the world" do
    arr = [2, 5, 4, 5, 2]
    jump = 7
    assert HurdleRace.start(jump, arr) == 0
  end
end
