defmodule FizzBuzz do
  # def start(max) when max > 0, do: 1..max |> Enum.map(fn(x) -> fizzbuzz(x, rem(x, 3), rem(x, 5)) end)

  # def start(max) when max > 0, do: 1..max |> Enum.map(&(fizzbuzz(&1, rem(&1, 3), rem(&1, 5))))

  # def start(max) when max > 0, do: Enum.map(1..max, &process / 1)

  def start(max) when max > 0, do: 1..max |> Enum.map(&process / 1)

  defp process(n), do: fizzbuzz(n, rem(n, 3), rem(n, 5))

  defp fizzbuzz(n, 0, 0), do: "FizzBuzz" |> IO.puts
  defp fizzbuzz(n, 0, _), do: "Fizz" |> IO.puts
  defp fizzbuzz(n, _, 0), do: "Buzz" |> IO.puts
  defp fizzbuzz(n, _, _), do: n |> Integer.to_string |> IO.puts
end

100 |> FizzBuzz.start
