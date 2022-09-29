defmodule ReverseAList do
  @moduledoc """
  Documentation for ReverseAList.
  """

  @doc """
  Reverse a list of items using the Enum.reverse/1 bif.

  ## Examples

      iex> ReverseAList.enum_bif([1,2,3,4,5])
      [5,4,3,2,1]

  """
  @spec enum_bif([]) :: []
  def enum_bif(list) do
    Enum.reverse(list)
  end

  @doc """
  Reverse a list of items using the concept of
  recursion and pattern matching

  ## Examples

      iex> ReverseAList.recursion([1,2,3,4,5])
      [5,4,3,2,1]

  """
  @spec recursion([...]) :: [...]
  def recursion(list), do: recursion(list, [])
  def recursion([], acc), do: acc
  def recursion([h | t], acc) do
    recursion(t, [h|acc])
  end
end
