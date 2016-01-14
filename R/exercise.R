# Some basic tests to make sure things are running. 
#Replace the things that is of the form "__STUFF__" with actual content.
#It might still need the quotes; it might not.

GetHowManyTrees_exercise <- function(ntaxa=10) {
	#ape can compute this for us.
	result <- howmanytrees(ntaxa, rooted = TRUE, binary = TRUE, labeled = TRUE, detail = FALSE)
	return(result)	
}

GetAlignment_exercise <- function() {
	#Let's see where mafft is installed
	print(system("which mafft"))
	data(woodmouse)
	result <- mafft(woodmouse, method = "auto", maxiterate = 1000, op = 1.53, ep = 0.0) #hint, look up one line
	return(result)
}
