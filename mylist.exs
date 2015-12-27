defmodule MyList do
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  def mapsum(list, func), do:  _mapsum(list, func, 0)

  defp _mapsum([], _, total), do: total
  defp _mapsum([ head | tail ], func, total) do 
    _mapsum(tail, func, total + func.(head))
  end

  def max(list), do: _max(list, 0)

  defp _max([], highest), do: highest
  defp _max([ head | tail ], highest) when head > highest do
    _max(tail, head)
  end 
  defp _max([ _ | tail ], highest), do: _max(tail, highest)
end
