defmodule Anagram do
  def anagram_of(word, [head | _tail]) do
    if word == head do
      [word]
    else:
      []
    end
  end
end