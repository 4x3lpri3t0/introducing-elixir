# The head-and-tail notation was built for recursive processing. Actually making that
# work typically follows a pattern in which a list arrives as an argument and is then passed
# to another (usually private) function with an accumulator argument.

defmodule Overall do
  def product([]) do
    0
  end

  def product(list) do
    product(list, 1)
  end

  def product([], accumulated_product) do
    accumulated_product
  end

  def product([head | tail], accumulated_product) do
    product(tail, head * accumulated_product)
  end
end