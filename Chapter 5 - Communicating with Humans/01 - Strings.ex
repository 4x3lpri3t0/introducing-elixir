x = "Quote - \" in a string. \n Backslash, too: \\ . \n"

IO.puts(x)

# ----

# CONCATENATE:

"el" <> "ixir"

a = "el"
a <> "ixir"
# "elixir"

# ----

# STRING INTERPOLATION:

IO.puts("#{n} yields #{result}.")

# When Elixir encounters #{} in a string, it processes its contents to get a result, converts
# them to a string if necessary, and combines the pieces into a single string.

# Even if the variable used in the string changes, the contents
# of the string will remain the same:

a = "this"

b = "The value of a is #{a}."
# "The value of a is this."

a = "that"

b
# "The value of a is this."

# Interpolation works only for values that are already strings or can naturally
# be converted to strings (such as numbers). If you want to interpolate
# any other sort of value, you must wrap it in a call to the
# inspect function:

x = 7 * 5

"x is now #{x}"
# "x is now 35"

y = {4, 5, 6}

"y is now #{y}"
# ERROR

"y is now #{inspect y}"
# "y is now {4,5,6}"

# ----

# STRING EQUALITY

"el" == "el"
# true

"el" === "el"
# true

"el" == "ixir" || "el" === "ixir"
# false