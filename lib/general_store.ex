defmodule Learning.GeneralStore do
  def filter_items(items, magic: magic?) do
    filter_items(items, magic?, [])
  end

  def filter_items([item | tail], magic?, filtered_items) do
    filtered_items =
      if item.magic == magic? do
        # tip: append array
        [item | filtered_items]
      else
        filtered_items
      end

    filter_items(tail, magic?, filtered_items)
  end

  def filter_items([], _magic?, filtered_items), do: filtered_items
end
