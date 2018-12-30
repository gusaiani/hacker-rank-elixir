defmodule DesignerPDFReview do
  @moduledoc """
  https://www.hackerrank.com/challenges/designer-pdf-viewer/problem
  """
  @spec start([pos_integer], binary) :: pos_integer
  def start(character_heights, word) do
    word
    |> to_charlist
    |> Enum.reduce(0, fn char, acc ->
      height = Enum.at(character_heights, char - 97)

      if height > acc, do: height, else: acc
    end)
    |> Kernel.*(String.length(word))
  end
end
