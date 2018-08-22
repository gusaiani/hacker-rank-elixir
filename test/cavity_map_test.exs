defmodule CavityMapTest do
  use ExUnit.Case

  test "Test picking_numbers with max of 3" do
    list = """
    1112
    1912
    1892
    1234
    """
    result = "1112\n1X12\n18X2\n1234"
    assert CavityMap.main(list) == result
  end
end
