defmodule Aoc2022Day01 do

  def max_calories do
    File.read!('./input.txt')
    |> String.split( "\n\n")
    |> Enum.map(&sum_calories/1)
    |> Enum.max()
  end

  def top_three_sum do
    File.read!('./input.txt')
    |> String.split( "\n\n")
    |> Enum.map(&sum_calories/1)
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
  end

  defp sum_calories(calories) do
    calories
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end
end
