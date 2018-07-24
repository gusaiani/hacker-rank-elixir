defmodule HurdleRace do
  @moduledoc """
  Documentation for HurdleRace.
  """

  def start(jump, arr) do
    tallestHurdle = Enum.max(arr)

    case jump > tallestHurdle do
      true -> 0
      false -> tallestHurdle - jump
    end
  end
end
