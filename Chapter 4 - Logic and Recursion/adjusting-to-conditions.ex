# The cond construct is broadly similar to the case statement, but without the pattern
# matching. If you would like, this allows you to write a catch-all clause—a guard matching
# true at the end. This often makes it easier to express logic based on broader comparisons
# than simple matching.

# Adding an if construct to convert numbers into atoms:

defmodule Drop do

  def fall_velocity(planemo, distance) when distance >= 0 do
    gravity = case planemo do
      :earth -> 9.8
      :moon  -> 1.6
      :mars  -> 3.71
    end

    velocity = :math.sqrt(2 * gravity * distance)

    cond do
      velocity == 0 -> :stable
      velocity < 5 -> :slow
      velocity >= 5 and velocity < 10 -> :moving
      velocity >= 10 and velocity < 20 -> :fast
      velocity >= 20 -> :speedy
    end
  end
  
end