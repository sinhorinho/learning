defmodule Learning.MyFilter do
  def filter_items(items, fun) do
    filter_items(items, fun, [])
  end

  def filter_items([item | tail], fun, filtered_items) do
    filtered_items =
      if fun.(item) do
        # tip: append array
        [item | filtered_items]
      else
        filtered_items
      end

    filter_items(tail, fun, filtered_items)
  end

  def filter_items([], _fun, filtered_items), do: filtered_items
end