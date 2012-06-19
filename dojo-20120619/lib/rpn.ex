defmodule Rpn do
  def calc(expression) when is_binary(expression) do
    calc binary_to_list(expression)
  end

  def calc(list) do
    do_calc tokenizer(list), []
  end

  defp do_calc(['+'|tokens], [h|[j|stack]]) do
    do_calc(tokens, [h+j|stack])
  end

  defp do_calc([h|tokens], stack) do
    stack = [list_to_integer(h)|stack]
    do_calc(tokens, stack)
  end

  defp do_calc([], [item]) do
    item
  end

  defp tokenizer(list) do
    Regex.split(%r/\s+/, list)
  end

  defp first([ h | _t]) do
    h
  end
end