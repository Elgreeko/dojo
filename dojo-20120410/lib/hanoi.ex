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

  defp step({ [ha|_] = a, [hb|_] = b, [hc|tc] }) when
      ha > hb and ha > hc do
    { a, [hc|b], tc }
  end

  defp step({ [ha|ta], b, [hc|_] = c }) when
      ha > hc do
    { ta, [ha|b], c }
  end

  defp step({ [ha|ta], b, c }) do
    { ta, b, [ha|c] }
  end
end