defmodule ProjectEuler.Problems.Problem1 do
  def run(upper_limit) do
    1..upper_limit-1
    |> Enum.filter(& rem(&1, 5) == 0 || rem(&1, 3) == 0)
    |> Enum.sum()
  end
end
