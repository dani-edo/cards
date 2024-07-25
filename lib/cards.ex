defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def hello do
    "hello world"
    # :world
  end

  def create_deck do
    ["Ace", "Two", "Three", "Four", "Five"]
  end

  def suffle(deck) do
    Enum.shuffle(deck)
  end
end
