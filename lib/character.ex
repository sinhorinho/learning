defmodule Learning.Character do
  def total_points(%{strength: strength, intelligence: intelligence, dexterity: dexterity}) do
    strength * 2 + intelligence * 3 + dexterity * 3
  end

  def total_points(_) do
    :invalid_character
  end
end
