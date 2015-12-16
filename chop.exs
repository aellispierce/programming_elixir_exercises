defmodule Chop do
  def guess(actual, a..b) do
    mid = a + div(b - a, 2)
    IO.puts "Is it #{mid}?"
    compare actual, a..b, mid
  end

  defp compare(actual, _.._, current) when current == actual do
    IO.puts "Got it! It was #{actual}"
  end

  defp compare(actual, a.._, current) when actual < current do
    guess actual, a..current 
  end

  defp compare(actual, _..b, current) when actual >=current do
    guess actual, current..b
  end
end
