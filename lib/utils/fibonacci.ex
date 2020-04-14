defmodule ProjectEuler.Utils.Fibonacci do
  def stream do
    Stream.unfold({0, 1}, fn {x_2, x_1} -> {x_2 + x_1, {x_1, x_2 + x_1}} end)
  end
end