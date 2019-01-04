defmodule BiggerIsGreater do
  @moduledoc """
  Solve
  https://www.hackerrank.com/challenges/bigger-is-greater/problem
  """

  def start(str) do
    str
    |> to_charlist()
    |> Enum.reverse()
    |> find_greater()
  end

  defp find_greater(sequence, acc \\ [])

  defp find_greater([head | [neck | tail]], acc)
    when head > neck do
    inverted_suffix = Enum.reverse([head] ++ acc)
    position_pivot(inverted_suffix, neck, tail)
  end

  defp find_greater([head | tail], acc) do
    find_greater(tail, [head] ++ acc)
  end

  defp find_greater([], _) do
    "no answer"
  end

  defp position_pivot(inverted_suffix, pivot, prefix, acc \\ [])

  defp position_pivot([head | []], pivot, prefix, acc) do
    String.reverse(<<pivot>> <> Enum.join(acc, "") <> <<head>> <> List.to_string(prefix))
  end

  defp position_pivot([head | tail], pivot, prefix, acc)
    when head > pivot do
    acc_text = Enum.join(Enum.reverse(acc))
    Enum.join([Enum.reverse(prefix), <<head>>, acc_text, <<pivot>>, tail])
  end

  defp position_pivot([head | tail], pivot, prefix, acc) do
    position_pivot(tail, pivot, prefix, [<<head>> | acc])
  end
end
