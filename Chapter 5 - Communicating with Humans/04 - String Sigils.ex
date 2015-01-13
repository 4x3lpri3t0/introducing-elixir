# String sigils tell the interpreter, “This is going to be
# this kind of content.”

# Sigils start with a ~ sign, then one of the letters s (for binary string), c (for character
# list), r (for regular expression), or w (to produce a list split into words by whitespace).

# If the letter is uppercase (S, C, R, or W),
# then the string is created exactly as shown,
# with no escaping or interpolation.

# ie: if you needed to create a string that contained
# escapes that some other tool was going to process:

pass_through = ~S"This is a {#msg}, she said.\n This is only a {#msg}."

IO.puts(pass_through)
# This is a {#msg}, she said.\n This is only a {#msg}.

# Elixir also offers w and W, for lists of words.
# This sigil takes a binary string and splits it
# into a list of strings separated by whitespace:

~w/Elixir is great!/
# ["Elixir", "is", "great!"]