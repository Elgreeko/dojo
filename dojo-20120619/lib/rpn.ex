defmodule Rpn do
  def calc(expression) when is_binary(expression) do
    calc binary_to_list(expression)
  end

  def calc(list) do
    list_to_integer tokenizer(list)
  end
end