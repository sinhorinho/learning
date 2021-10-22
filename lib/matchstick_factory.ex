defmodule Learning.MatchstickFactory do
  @big_box_size 50
  @medium_box_size 20
  @small_box_size 5

  def boxes(sticks) do
    big = div(sticks, @big_box_size)
    remaning_after_big = rem(sticks, @big_box_size)

    medium = div(remaning_after_big, @medium_box_size)
    remaning_after_medium = rem(remaning_after_big, @medium_box_size)
    
    small = div(remaning_after_medium, @small_box_size)
    remaning = rem(remaning_after_medium, @small_box_size)

    %{big: big, medium: medium, small: small, remaning_matchsticks: remaning}
  end
end
