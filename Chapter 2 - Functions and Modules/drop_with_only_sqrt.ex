# Elixir lets you specify which functions you want
# with the 'only' argument

defmodule Drop do
  import :math, only: [sqrt: 1]
  def fall_velocity(distance) do
    sqrt(2 * 9.8 * distance)
  end
end

#If you just need to import a module for one function,
# you can place the import directive inside
# of the def or defp for that function:

defmodule Drop do
  def fall_velocity(distance) do
    import :math, only: [sqrt: 1]
    sqrt(2 * 9.8 * distance)
  end
end

# All of the functions except some:
# import :math, except: [sin: 1, cos:, 1]