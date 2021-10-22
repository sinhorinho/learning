defmodule Learning.GeneralStoreTest do
  use ExUnit.Case
  alias Learning.GeneralStore

  @test_data [
    %{title: "Longsword", price: 50, magic: false},
    %{title: "Healing Potion", price: 60, magic: true},
    %{title: "Rope", price: 10, magic: false},
    %{title: "Dragon's Spear", price: 100, magic: true}
  ]

  describe "filter_items/2" do
    test "filters items" do
      assert [%{title: "Dragon's Spear"}, %{title: "Healing Potion"}] =
               GeneralStore.filter_items(@test_data, magic: true)
    end
  end
end
