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

  # create deck and show all deck value
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for value <- values, suit <- suits do
      "#{value} of #{suit}"
    end
  end

  # shuffle deck value
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # check if deck contains card
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  # split deck into hand and remaining deck
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  # save deck to file
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  # load deck from file
  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "File does not exist"
    end
  end

  def create_hand(hand_size) do
    deck = Cards.create_deck
    deck = Cards.shuffle(deck)
    hand = Cards.deal(deck, hand_size)
  end
end
