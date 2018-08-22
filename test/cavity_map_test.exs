defmodule CavityMapTest do
  use ExUnit.Case

  test "One test" do
    list = """
    1112
    1912
    1892
    1234
    """
    result = "1112\n1X12\n18X2\n1234"
    assert CavityMap.main(list) == result
  end

  test "Another test" do
    list = """
    9999
    9999
    9999
    9999
    """
    result = "9999\n9999\n9999\n9999"
    assert CavityMap.main(list) == result
  end

end
