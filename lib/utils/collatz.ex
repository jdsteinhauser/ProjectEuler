defmodule ProjectEuler.Utils.Collatz do
  def sequence(1), do: [1]
  def sequence(n) when rem(n, 2) == 0, do: [ n | sequence(Integer.floor_div(n, 2))]
  def sequence(n), do: [ n | sequence(3 * n + 1)]
end