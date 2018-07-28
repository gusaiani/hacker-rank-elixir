defmodule PickingNumbers do
  @moduledoc """
  This should get the largest set of numbers, non-sequentially,
  that are no more than 1 larger than the other.

  So, for `[4, 6, 5, 3, 3, 1]` the result is `3` because the
  largest such sequence is `3, 3, 4`.

  For `[1, 1, 2, 2, 4, 4, 5, 5, 5]` the result is 5 because the
  largest such sequence is `4, 4, 5, 5, 5`.

  """
  def start(list) do
    list
    |> make_hash_table(%{})
    |> count_sequences
  end

  def make_hash_table([h | tail], hash_table) do
    {_, hash_table} = Map.get_and_update(hash_table, h, fn x -> {x, (x || 0) + 1} end)
    make_hash_table(tail, hash_table)
  end

  def make_hash_table([], hash_table), do: hash_table

  def count_sequences(hash_table) do
    table_keys = Map.keys(hash_table)
    adjacents(table_keys, hash_table)
  end

  def adjacents(keys, hash_table, max \\ 0)

  def adjacents([h | t], hash_table, max) do
    with_prev_adjacent = hash_table[h] + adjacent(:minus, h, hash_table)
    with_next_adjacent = hash_table[h] + adjacent(:plus, h, hash_table)

    max =
      cond do
        with_prev_adjacent > max ->
          with_prev_adjacent

        with_next_adjacent > max ->
          with_next_adjacent

        true ->
          max
      end

    adjacents(t, hash_table, max)
  end

  def adjacents([], _, max), do: max

  def adjacent(:plus, key, hash_table) do
    case Map.has_key?(hash_table, key + 1) do
      true -> hash_table[key + 1]
      false -> 0
    end
  end

  def adjacent(:minus, key, hash_table) do
    case Map.has_key?(hash_table, key - 1) do
      true -> hash_table[key - 1]
      false -> 0
    end
  end
end
