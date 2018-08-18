defmodule CamelCaseTest do
  use ExUnit.Case

  test "one plus_minus example" do
    assert CamelCase.start("saveChangesInTheEditor") == 5
  end
end
