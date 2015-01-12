defmodule Drop do

  def fall_velocity({:earth, distance}) when distance >= 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity({:moon, distance}) when distance >= 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity({:mars, distance}) when distance >= 0 do
    :math.sqrt(2 * 3.71 * distance)
  end

end

# The arity changes: this version is fall_velocity/1 instead of
# fall_velocity/2 because the tuple counts as only one argument.

# Drop.fall_velocity({:earth, 20})

# Passing a single tuple rather than a pile of arguments gives
# Elixir much of its flexibility, especially when you get to
# passing messages between different processes.