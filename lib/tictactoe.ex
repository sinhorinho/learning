defmodule Learning.TicTacToe do
  @symbols [:x, :o]
  def get_winner([
        s,s,s,
        _,_,_,
        _,_,_
      ])
      when s in @symbols,
      do: s

  def get_winner([
        _,_,_,
        s,s,s,
        _,_,_
      ])
      when s in @symbols,
      do: s

  def get_winner([
        _,_,_,
        _,_,_,
        s,s,s
      ])
      when s in @symbols,
      do: s

  def get_winner([
        s,_,_,
        s,_,_,
        s,_,_
      ])
      when s in @symbols,
      do: s

  def get_winner([
        _,s,_,
        _,s,_,
        _,s,_
      ])
      when s in @symbols,
      do: s

  def get_winner([
        _,_,s,
        _,_,s,
        _,_,s
      ])
      when s in @symbols,
      do: s

  def get_winner([
        s,_,_,
        _,s,_,
        _,_,s
      ])
      when s in @symbols,
      do: s

  def get_winner([
        _,_,s,
        _,s,_,
        s,_,_
      ])
      when s in @symbols,
      do: s
end
