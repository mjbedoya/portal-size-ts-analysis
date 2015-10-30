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

gccontent=read_dna_gc(houseelf_data$dnaseq)     # Call the content (take a vector of sequences and return a vector of GC-contents)




