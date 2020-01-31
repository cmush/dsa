defmodule FibonacciSequence do
  @moduledoc """
  Documentation for FibonacciSequence
  """
  @spec recursion(integer()) :: integer()
  def recursion(0), do: 0
  def recursion(1), do: 1
  def recursion(int), do: recursion(0, 1, int-2)

  #base case
  def recursion(_, int, -1), do: int
  def recursion(prev_int, int, n) do
    next = prev_int + int
    recursion(int, next, n-1)
  end
end
