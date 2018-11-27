# Genome Project

## Provides basic analysis of raw 23andMe Data.

The input for this program is the raw genomic data provided by 23andMe. This data provides information on over 600,000 possible variations (SNPs) in human DNA. These SNPs are partially responsible for the physical and mental differences between humans. 

## analyze.rb
This file takes in genomes/raw23andme.txt as an input, turns it into an array, and contains 2 methods:

- *chromosome_count()* - Counts the number of SNPs located in each of the different human chromosomes
- *genotype_count()* - Counts the number of each genotype in the genomic data that is put into the program. 

## raw23andme.txt
This file contains over 600,000 lines of SNP data, along with some information on the data.

## sampleoutput.txt
This is a copy of what analyze.rb will output if it uses raw23andme.txt as an input. 
