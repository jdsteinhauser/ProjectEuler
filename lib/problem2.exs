problem2 = fn upper_limit -> 
  Stream.unfold({0, 1}, fn {x_2, x_1} -> {x_2 + x_1, {x_1, x_2 + x_1}} end)
  |> Stream.take_while(& &1 < upper_limit)
  |> Stream.filter(& rem(&1, 2) == 0)
  |> Enum.sum()
end

problem2.(4_000_000)