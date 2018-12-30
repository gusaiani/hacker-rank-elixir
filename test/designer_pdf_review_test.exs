defmodule DesignerPDFReviewTest do
  use ExUnit.Case

  test "Test one word" do
    character_heights = [
      1, 3, 1, 3, 1, 4, 1, 3, 2,
      5, 5, 5, 5, 5, 5, 5, 5, 5,
      5, 5, 5, 5, 5, 5, 5, 5
    ]

    word = "abc"

    assert DesignerPDFReview.start(character_heights, word) == 9
  end

  test "Test another word" do
    character_heights = [
      1, 3, 1, 3, 1, 4, 1, 3, 2,
      5, 5, 5, 5, 5, 5, 5, 5, 5,
      5, 5, 5, 5, 5, 5, 5, 7]

    word = "zaba"

    assert DesignerPDFReview.start(character_heights, word) == 28
  end
end
