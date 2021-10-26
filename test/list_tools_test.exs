defmodule Learning.ListToolsTest do
  use ExUnit.Case
  alias Learning.ListTools

  @test_data [4, 2, 16, 9, 10]

  describe "max/1" do
    test "max" do
      assert 16 = ListTools.maxnumber(@test_data)
    end
  end

  describe "min/1" do
    test "min" do
      assert 2 = ListTools.minnumber(@test_data)
    end
  end
end
