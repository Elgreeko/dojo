defmodule Hanoi do
  def solve(n) do
    {[], [], List.range(1, n)}
  end

  def generate(n) do
    {List.range(1, n),[],[]}
  end

  @doc """
  Receives a tower and iterates over it the given
  number of times.
  """
  def step(tower, missing_steps) when missing_steps > 0 do
    step(step(tower), missing_steps - 1)
  end

  def step(tower, 0) do
    tower
  end

  # Gives a single tower step.

  defp step({ [ha|_] = a, [hb|tb], [hc|_] = c }) when ha > hb and ha > hc do
    { a, tb, [hb|c] }
  end
  defp step({ [ha|a], [hb|_] = b, c }) when ha > hb do
    { a, b, [ha|c] }
  end


  defp step({ [h|a], b, c }) do
    { a, [h|b], c }
  end
end