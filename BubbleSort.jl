#!/usr/bin/julia

# Julia Lang

# Written by Katrina Siegfried
# 2018-09-15
# CSCI3412_Algorithms

# BubbleSort algorithm written from notes from DataStructures
function bubbleSort(list)
	numberOfSwaps = 0
	numberOfComparisons = 0
	len = length(list)
	for i = 1:len-1
		for j = 2:len
			numberOfComparisons += 1
			if list[j-1] > list[j]
				tmp = list[j-1]
				list[j-1] = list[j]
				list[j] = tmp
				numberOfSwaps += 1
			end
		end
	end
	println("Number of swaps: ", numberOfSwaps)
	println("Number of comparisons: ", numberOfComparisons)
end


# UNCOMMENT CODE BELOW TO PRINT UNSORTED LIST	
for i = 1:length(listToSort)
	# println(listToSort[i])
end

# CALL BUBBLE SORT AND BENCHMARK IT
println("Bubble Sort")
@time bubbleSort(listToSort)
writedlm("sortResults.txt", listToSort)

# UNCOMMENT CODE BELOW TO PRINT SORTED LIST	
for i = 1:length(listToSort)
	println(listToSort[i])
end

