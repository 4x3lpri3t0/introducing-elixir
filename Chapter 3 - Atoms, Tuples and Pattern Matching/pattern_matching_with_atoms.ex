defmodule Drop do

  def fall_velocity(:earth, distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) do
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) do
    :math.sqrt(2 * 3.71 * distance)
  end

end

# iex(3)> Drop.fall_velocity(:earth,20)
# 19.79898987322333