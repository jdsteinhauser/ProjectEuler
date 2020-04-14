defmodule ProjectEuler.Problems.Problem4 do
  def run(upper_limit) do
    for x <- 1..upper_limit-1, y <- 1..upper_limit-1
      do
        x * y
      end
    |> Enum.filter(fn x -> Integer.to_string(x) == String.reverse(Integer.to_string(x)) end)
    |> Enum.max()
  end
end
