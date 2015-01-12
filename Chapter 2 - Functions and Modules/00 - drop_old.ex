# THE &

fall_velocity= fn (distance) -> :math.sqrt(2 * 9.8 * distance) end
#Fun<erl_eval.6.111823515>

# If that is too verbose for you, you could use the &:

fall_velocity= &(:math.sqrt(2 * 9.8 * &1))

# DEFININE MODULES

defmodule Drop do
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  def mps_to_mph(mps) do
    2.23693629 * mps
  end

  def mps_to_kph(mps) do
    3.6 * mps
  end
end

# Call from console: Drop.fall_velocity 1

# Use defp instead of def for private functions

# You can specify the function to retrieve with
# a single argument in the form Module_name.function_name/arity
# Arity is the number of arguments a function takes:

# fun = &Drop.fall_velocity/1

# fun.(20)