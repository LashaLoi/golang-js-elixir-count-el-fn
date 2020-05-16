defmodule CountEl do
  @arr [1, 1, 1, 2, 3, 4, 5, 5, 5, 6, 6]

  def main() do
    time_of(&count_el/0)
  end

  def count_el() do
    Enum.reduce(@arr, %{}, fn curr, acc ->
      case Map.has_key?(acc, curr) do
        true -> Map.merge(acc, %{curr => acc[curr] + 1})
        _ -> Map.merge(acc, %{curr => 1})
      end
    end)
  end

  def time_of(function) do
    {time, result} = :timer.tc(function)
    IO.puts("Time: #{time}ms")
    result
  end
end
