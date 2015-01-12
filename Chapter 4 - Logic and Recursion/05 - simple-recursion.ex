# RECURSION

# The main tool you’ll use to repeat actions is recursion

# There are two basic kinds of useful recursion. In some situations, you can count on the
# recursion to reach a natural end. The process runs out of items to work on or reaches
# a natural limit. In other situations, there is no natural end, and you need to keep track
# of the result so the process will end.

# ----

# COUNTING DOWN

# The simplest model of recursion with a natural limit is a countdown

defmodule Count do

  def countdown(from) when from > 0 do
    IO.inspect(from)
    countdown(from-1)
  end

  def countdown(from) do
    IO.puts("blastoff!")
  end

end