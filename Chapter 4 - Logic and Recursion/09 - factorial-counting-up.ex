# You can achieve tail recursion for factorials by applying the counting-up approach to
# factorials. You’ll get the same results (at least for integer values), but the calculations
# will work a little differently:

defmodule Fact do

  def factorial(n) do
    factorial(1, n, 1)
  end

  defp factorial(current, n, result) when current <= n do
      new_result = result * current
      IO.puts("#{current} yields #{new_result}.")
      factorial(current + 1, n, new_result)
  end

  defp factorial(_current, _n, result) do
    IO.puts("finished!")
    result
  end

end

# Because factorial/3’s last call in the recursive section is to itself, without any complications
# to track, it is tail recursive. Elixir can minimize the amount of information it
# has to keep around while the calls all happen.

# The calculation produces the same results, but does the math in a different order:

# 1 yields 1.
# 2 yields 2.
# 3 yields 6.
# 4 yields 24.
# finished!
# 24

# Although the code is tracking more values, the runtime has less to do. When it finally
# hits the final result, there’s no further calculation needed. That result is the result, and
# it passes back through to the original call.