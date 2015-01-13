# You can pattern match with lists just as you can with other Elixir data structures:

[1,x,4,y] = [1,2,4,8]

insert = [2,4,8]
full = [1,insert,16,32]
## [1, [2, 4, 8], 16, 32]

neat = List.flatten(full)
## [1, 2, 4, 8, 16, 32]

a = [1,2,4]
b = [8,16,32]
list_of_lists = [a,b]
## [[1, 2, 4], [8, 16, 32]]

combined = Enum.concat(a, b)
## [1, 2, 4, 8, 16, 32]

combined = a ++ b
## [1, 2, 4, 8, 16, 32]

# If you have a set of lists you’d like combined, you can use the Enum.concat/1 function:
c = [64,128,256]
combined3 = Enum.concat([a,b,c])
## [1,2,4,8,16,32,64,128,256]

