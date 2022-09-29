defmodule FibonacciSequence do
  @moduledoc """
  Documentation for FibonacciSequence
  """
  @spec recursion(integer()) :: integer()
  def recursion(0) do
    IO.inspect(0, label: "recursion")
    0
  end
  def recursion(1) do
    IO.inspect(1, label: "recursion")
    1
  end

  def recursion(int) do
    res = recursion(0, 1, int-2)
    IO.inspect(res, label: "recursion")
    res
  end

  #base case
  def recursion(_, int, -1) do
    IO.inspect(int, label: "recursion")
    int
  end
  def recursion(prev_int, int, n) do
    next = prev_int + int
    IO.inspect(next, label: "recursion")
    # recursion(int, next, n-1)
    spawn(fn -> :timer.sleep(3000); recursion(int, next, n-1) end)
  end

  def delayed_non_blocking_recursion(int) do
    spawn(fn -> :timer.sleep(3000); recursion(int) end)
  end
end
