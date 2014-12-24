# In Elixir, you can specify which data a given function will accept with guards.

# Guards, indicated by the when keyword, let you fine-tune
# the pattern matching based on the content of arguments, not just their shape.

defmodule Drop do
  
  def fall_velocity(:earth, distance) when distance >= 0 do
    :math.sqrt(2 * 9.8 * distance)
  end
  
  def fall_velocity(:moon, distance) when distance >= 0 do
    :math.sqrt(2 * 1.6 * distance)
  end
  
  def fall_velocity(:mars, distance) when distance >= 0 do
    :math.sqrt(2 * 3.71 * distance)
  end

end

# The error message may not seem like a major improvement,
# but as you add layers of code, “not handled” may be a
# more appealing response than “broke my formula.”

