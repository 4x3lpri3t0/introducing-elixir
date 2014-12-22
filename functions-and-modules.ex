# THE &

fall_velocity= fn (distance) -> :math.sqrt(2 * 9.8 * distance) end
#Fun<erl_eval.6.111823515>

# If that is too verbose for you, you could use the &:

fall_velocity= &(:math.sqrt(2 * 9.8 * &1))

