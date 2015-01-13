# Because you can’t actually change a list, modifying or converting a list means creating a new list.
# To do that, you use the same vertical bar head/tail syntax, but on the right side of the pattern match instead of the left:

x = [1|[2,3]]
## [1, 2, 3]

# Elixir interprets [1|[2,3]] as creating a list.
# If the value to the right of the vertical bar is a list,
# it gets appended to the head as a list.

y = [1,2 | [3]]
## [1, 2, 3]

z = [1,2 | 3]
## [1, 2 | 3]

# If you don’t wrap the tail in square brackets —you get a list,
# called an improper list, that still contains a constructor, with a strange tail.

# ----

# Calculating a series of drop velocities, with an error

defmodule ListDrop do
  def falls(list) do
    falls(list, [])
  end

  def falls([], results) do
    results
  end

  def falls([head|tail], results) do
    falls(tail, [Drop.fall_velocity(head) | results])
  end
end

# That last key line in falls/2 is reading a list from the beginning
# to the end and creating a list from the end to the beginning.
# That puts the values in the wrong order.

# ----

# Calculating a series of drop velocities, with the error fixed:

defmodule ListDrop do
  def falls(list) do
    falls(list, [])
  end

  def falls([], results) do
    Enum.reverse(results)
  end

  def falls([head|tail], results) do
    falls(tail, [Drop.fall_velocity(head) | results])
  end
end


# ListDrop.falls([{:earth, 20}, {:moon, 20}, {:mars, 20}])