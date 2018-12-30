defmodule PlusMinus do
  @moduledoc """
  Solve
  https://www.hackerrank.com/challenges/plus-minus/problem
  """

  def start(arr) do
    arr
    |> process_signals(0, 0, 0)
    |> Enum.map(fn n -> n / length(arr) end)
    |> Enum.map(fn n -> :erlang.float_to_binary(n, decimals: 6) end)
  end

  defp process_signals([], positive, negative, zeroes) do
    [positive, negative, zeroes]
  end

  defp process_signals([h | t], positive, negative, zeroes)
       when h > 0 do
    process_signals(t, positive + 1, negative, zeroes)
  end

  defp process_signals([h | t], positive, negative, zeroes)
       when h < 0 do
    process_signals(t, positive, negative + 1, zeroes)
  end

  defp process_signals([_ | t], positive, negative, zeroes) do
    process_signals(t, positive, negative, zeroes + 1)
  end
end
