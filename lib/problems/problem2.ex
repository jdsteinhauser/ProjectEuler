defmodule ProjectEuler.Problems.Problem2 do
  def run(upper_limit) do
    ProjectEuler.Utils.Fibonacci.stream()
    |> Stream.take_while(& &1 < upper_limit)
    |> Stream.filter(& rem(&1, 2) == 0)
    |> Enum.sum()
  end
end
