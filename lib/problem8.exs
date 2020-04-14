problem8 = fn digit_string ->
  digit_string
  |> String.replace("\n", "")
  |> String.to_integer()
  |> Integer.digits()
  |> Enum.chunk_every(13, 1, :discard)
  |> Enum.map(fn xs -> (Enum.reduce xs, 1, &Kernel.*/2) end)
  |> Enum.max()
end