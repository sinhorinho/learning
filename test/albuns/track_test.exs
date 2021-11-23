defmodule Albuns.TrackTest do
  use ExUnit.Case

  alias Albuns.Track

  describe "new/1" do
    test "when duration is positive - should return a track struct" do
      attrs = %{name: "Greensleeves", duration: 60}

      assert {:ok, track} = Track.new(attrs)

      assert track.name == attrs.name
      assert track.duration == attrs.duration
    end

    test "when duration is less or equal to zero - should return an error" do
      attrs = %{name: "Greensleeves", duration: 0}

      assert {:error, :invalid_params} = Track.new(attrs)
    end

    test "when missing parameters - should return an error" do
      attrs = %{duration: 10}

      assert {:error, :invalid_params} = Track.new(attrs)
    end
  end
end
