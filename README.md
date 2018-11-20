#Genome Project

The input for this program is the raw genomic data provided by 23anMe. This data provides information on over 600,000 possible variations (SNPs) in human DNA. These SNPs are associated with the physical and mental differences between humans. 


genome.txt - This file includes my raw genomic data, exactly as it is provided by 23andMe. 

iangenome.txt - This file is my raw genomic data with the description at the top cut off

GenomeData.rb - This file takes in iangenome.txt as an input and converts it to a 2D array. GenomeData.rb contains two methods:

    chromosome_count() : This method counts the number of SNPs located in each of the different human chromosomes
    genotype_count() : This method counts the number of each genotype (hetero, homo, haploid, or if the genotype is missing) of each SNP in the genomic data that is put into the program. 