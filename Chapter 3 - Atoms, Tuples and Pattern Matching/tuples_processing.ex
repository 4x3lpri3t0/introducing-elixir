#If you receive the tuple as a single variable, you can do
# many different things with it.

# A simple place to start is using the tuple as a pass
# through to a private version of the function.

defmodule Drop do
  
  def fall_velocity({planemo, distance}) when distance >= 0 do
    fall_velocity(planemo, distance)
  end

  defp fall_velocity(:earth, distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) do
    :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) do
    :math.sqrt(2 * 3.71 * distance)
  end

end

# The use of defp for the private versions mean that
# only fall_velocity/1, the tuple version, is public.

# ----

# You could also break things up a bit and do
# pattern matching after getting the variable:

# def fall_velocity(where) do
#   {planemo, distance} = where
#   fall_velocity(planemo,distance)
# end