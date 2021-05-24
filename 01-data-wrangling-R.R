# load libraries
library(tidyverse)
library(janeaustenr)
install.packages("janeaustenr")

#always create files in the github first and then copy to your computer.

#get the book Emma
data(emma)
class(emma)
#why is the view function not working?
view(emma)
emma

#combine the chunks that below to the same sentence and eliminate weird 
# line breaks.

#suggestion: 
# step 1. collapse everything and then split by punctuation.
emma_novel_combined <- paste(emma, collapse = " ")

#Step 2. split by punctuation
emma_novel_split <- unlist(str_split(emma_novel_combined, pattern = "\\.|\\?|!"))
emma_novel_split                        

#Adriana's solution:
#check the last character in the chunk if it is not a punctuation.
# check the following character in the next check, if it's a lower case, combine.

emma[15]
emma[16]

#create a new emma to work on 
new_emma <- c()
new_paragraph <- ""

#check the length.
length(emma)

# add it to the for loop and print each line.
for (i in 1:length(emma)) {
  print(emma[i])
  # count total number of characters in current line
  character_count <- nchar(emma[i])
  print(character_count)
  # substring current line to get last character 
  print(substr(emma[i], character_count, character_count))
  
}

#libraries needed for this
library(tidyverse)
# functon to get a messy character vector and returns paragraphs

