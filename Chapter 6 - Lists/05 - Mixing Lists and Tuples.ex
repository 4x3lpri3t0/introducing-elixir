# The simplest tools are the List.zip/1 and List.unzip/1 functions.
# They can turn two lists of the same size into a list of tuples or
# a list of tuples into a list of two lists:


list1 = [:earth, :moon, :mars]

list2 = [9.8, 1.6, 3.71]

planemos = List.zip([list1, list2])
# [earth: 9.8, moon: 1.6, mars: 3.71]

separate_lists = List.unzip(planemos)
# [[:earth,:moon,:mars],[9.8,1.6,3.71]]