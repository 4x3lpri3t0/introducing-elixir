# TUPLE:

tuple = {:earth, 20}

# Often (but not always) an atom at the beginning of the tuple
# indicates what it’s really for, providing an informal
# identifier of the complex information structure stored in the tuple.

elem(tuple, 1)
# 20

# Elixir (unlike Erlang) counts from zero,
# so the first item in a tuple is referenced as 0

newTuple = put_elem(tuple, 1, 40)
# {:earth, 40}

tuple_size(newTuple)
# 2