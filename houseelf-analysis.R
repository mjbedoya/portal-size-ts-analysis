## Continuing the analysis of house-elves (Dr. Granger)

# Study:  relationship between the length of house-elves' ears and aspects of their DNA

# Importing the data
houseelf_data<-read.csv("houseelf_earlength_dna_data_2.csv")  ; head(houseelf_data)

# Calculation of the GC-content of a sequence
# Using the function str_to_lower or str_to_upper in the stringr package might be useful). 

library(stringr)

read_dna_gc <- function (data) {
  data<-str_to_upper(data)
  Gs <- str_count(data, 'G')
  Cs <- str_count(data, 'C')
  gc_content <- (Gs + Cs) / str_length(data) * 100
  return(gc_content)
}

get_size_class <- function(ear_length){
  # Calculate the size class for one or more earth lengths
  ear_lengths <- ifelse(ear_length > 10, "large", "small")
  return(ear_lengths)
}

gccontent=read_dna_gc(houseelf_data$dnaseq)     # Call the content (take a vector of sequences and return a vector of GC-contents)

# Creates a data frame with information about:
# individual ID, the earth length class, and the gc-content for each individual.

content=data.frame(id=houseelf_data$id,earlengthclass=houseelf_data$earlength,gccontent=gccontent)  # creating a dataframe using the Id

write.csv(content,"content_class_id.csv")   # write as CSV and save the data created in my folder



