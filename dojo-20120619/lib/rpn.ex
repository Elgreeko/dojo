defmodule Rpn do
  def calc(expression) when is_binary(expression) do
    calc binary_to_list(expression)
  end

  def calc(list) do
    do_calc tokenize(list), []
  end

  defp do_calc(['+'|tokens], [h|[j|stack]]) do
    do_calc(tokens, [j+h|stack])
  end

  defp do_calc(['-'|tokens], [h|[j|stack]]) do
    do_calc(tokens, [j-h|stack])
  end

  defp do_calc(['*'|tokens], [h|[j|stack]]) do
    do_calc(tokens, [j*h|stack])
  end

  defp do_calc(['/'|tokens], [h|[j|stack]]) do
    do_calc(tokens, [j/h|stack])
  end

  defp do_calc(['^'|tokens], [h|[j|stack]]) do
    do_calc(tokens, [:math.pow(h, j)|stack])
  end

  defp do_calc([h|tokens], stack) do
    do_calc(tokens, [list_to_integer(h)|stack])
  end

  defp do_calc([], [item]) do
    item
  end

  defp tokenize(list) do
    Regex.split(%r/\s+/, list)
  end
end