defmodule Learning.ListTools do
  def maxnumber([head | tail]), do: maxnumber(tail, head)

  def maxnumber([item | tail], numbermax) do
    numbermax =
      if item > numbermax do
        item
      else
        numbermax
      end

    maxnumber(tail, numbermax)
  end

  def maxnumber([], numbermax), do: numbermax

  def minnumber([head | tail]), do: minnumber(tail, head)

  def minnumber([item | tail], numbermin) do
    numbermin =
      if item < numbermin do
        item
      else
        numbermin
      end

    minnumber(tail, numbermin)
  end

  def minnumber([], numbermin), do: numbermin
end
