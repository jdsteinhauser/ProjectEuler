defmodule ProjectEuler.Problems.Problem14 do
  def run(upper_limit) do
    1..upper_limit-1
    |> Enum.map(&ProjectEuler.Utils.Collatz.sequence/1)
    |> Enum.max_by(&Enum.count/1)
  end
end