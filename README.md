#Genome Project

###Provides basic analysis of raw 23andMe Data.

The input for this program is the raw genomic data provided by 23andMe. This data provides information on over 600,000 possible variations (SNPs) in human DNA. These SNPs are partially responsible for the physical and mental differences between humans. 

GenomeData.rb - This file takes in genomes/raw23andme.txt as an input and converts it to a 2D array. GenomeData.rb contains two methods:

chromosome_count() : This method counts the number of SNPs located in each of the different human chromosomes
genotype_count() : This method counts the number of each genotype in the genomic data that is put into the program. 

Here is a sample output from GenomeData.rb:

Loading genomes/raw23andme.txt
Chromosome 1 has 46662 SNP data points
Chromosome 2 has 46128 SNP data points
Chromosome 3 has 38517 SNP data points
Chromosome 4 has 33915 SNP data points
Chromosome 5 has 34387 SNP data points
Chromosome 6 has 40384 SNP data points
Chromosome 7 has 33053 SNP data points
Chromosome 8 has 30268 SNP data points
Chromosome 9 has 26586 SNP data points
Chromosome 10 has 29210 SNP data points
Chromosome 11 has 29328 SNP data points
Chromosome 12 has 28451 SNP data points
Chromosome 13 has 21679 SNP data points
Chromosome 14 has 18696 SNP data points
Chromosome 15 has 18281 SNP data points
Chromosome 16 has 19199 SNP data points
Chromosome 17 has 18743 SNP data points
Chromosome 18 has 16490 SNP data points
Chromosome 19 has 13002 SNP data points
Chromosome 20 has 14494 SNP data points
Chromosome 21 has 8461 SNP data points
Chromosome 22 has 9098 SNP data points
Chromosome X has 19478 SNP data points
Chromosome Y has 2302 SNP data points
Chromosome MT has 5075 SNP data points
----
601887 total data points
-----
404191 Homozygous data points
163293 Heterozygous data points
10212 Missing data points
24191 Haploid data points