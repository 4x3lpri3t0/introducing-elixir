# To create a character list,
# you use single quotes instead of double quotes:

x = 'ixir'

# You concatenate character lists with ++ instead of <>:

'el' ++ x

# Char list to string:

List.to_string('elixir')

# String to char list:

String.to_char_list("elixir")

# For purposes other than working with Erlang librares,
# you should probably stick with strings.