problem1 = fn upper_limit ->
  1..upper_limit-1
  |> Enum.filter(& rem(&1, 5) == 0 || rem(&1, 3) == 0)
  |> Enum.sum()
end

problem1.(1000)