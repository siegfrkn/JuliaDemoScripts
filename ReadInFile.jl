#!/usr/bin/julia

# Julia Lang

# Written by Katrina Siegfried
# 2018-09-15
# CSCI3412_Algorithms
using DelimitedFiles


function read_in_file()
	# open the input file, save the first two lines as title and number of indices
	stream = open("/home/katrina/Documents/CSCI3412_Algorithms/Test.txt", "r")
	# stream = open("/home/katrina/Documents/CSCI3412_Algorithms/one-million-randoms.txt", "r")
	# stream = open("/home/katrina/Documents/CSCI3412_Algorithms/nearly-sorted.txt", "r")
	title = readline(stream, keep=false)
	numIndicesString = readline(stream, keep=false)
	numIndices = parse(Int64, numIndicesString)
	# create an empty array of length passed in the file as numIndices
	array = Array{Int64}(undef, numIndices, 1)
	index = 1
	# while not at the end of the file, read in all the remaining values as Int64
	while eof(stream) != true
		tmp = readline(stream, keep=true)
		array[index] = parse(Float64, tmp)
		index += 1
	end
	# return the array from the file for sorting
	return array
end


# CALL FUNCTION TO READ IN FILE
listToSort  = read_in_file()

# UNCOMMENT CODE BELOW TO PRINT UNSORTED LIST	
for i = 1:length(listToSort)
	# println(listToSort[i])
end
# WRITE RESULTS TO NEW TXT FILE
writedlm("sortResults.txt", listToSort)