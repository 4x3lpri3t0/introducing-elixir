# Lists are a convenient way to hold piles of similar data, but their great strength
# in Elixir is the way they make it easy to do recursion.

# To extract the head and the tail, you use pattern matching:

[head | tail] = [1,2,4]

list = [1, 2, 4]

[h1 | t1] = list

h1
## 1

t1
## [2,4]

[h2 | t2] = t1
## [2,4]

h2
## 2

t2
## [4]

[h3 | t3] = t2

h3
## 4

t3
## []