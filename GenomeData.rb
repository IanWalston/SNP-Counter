#load a file from the raw genome data provided from 23andme
genome_file = 'iangenome.txt'
str = File.read(genome_file)
puts "Loading " + genome_file

#This code arranges the raw data into an array of 4 member arrays ordered {rsid, chromosome, position, genotype}
split_str = str.split(" ")
my_genome_array = []
i = 0
subarr = []
split_str.each {|ele|
  i+=1
  subarr << ele
  if i == 4
    i=0
    my_genome_array << subarr
    subarr = []
  end
}

# This method counts the number of SNPs for each chromosome 
def chromosome_count(genome_array)

  ccount = Hash.new(0)

  genome_array.each {|entry| ccount[entry[1]] += 1}
  ccount.each {|chromosome, count| puts "Chromosome " + chromosome.to_s + " has " + count.to_s + " SNP data points" }
  total = 0
  ccount.values.each {|count| total+= count }
  puts ""
  puts "This data set contains a total of " + total.to_s + " data points"
  return ccount
end

# This method counts the number of heterozygous, homozygous, haploid, or missing SNPs
def genotype_count(genome_array)

  gcount = Hash.new(0)

  #This block of code will generate a list of homozygous genotypes, and a list of heterozygous genotypes
  nucleotides = "ACTG"
  homozygous_genotypes_array = []
  heterozygous_genotypes_array = []
  nucleotides.each_char {|ele1| 
  nucleotides.each_char {|ele2|	
  homozygous_genotypes_array<<(ele1 + ele2) if ele1 == ele2	
  heterozygous_genotypes_array<<(ele1 + ele2) if ele1 != ele2}}

  genome_array.each {|entry|
    if heterozygous_genotypes_array.include?(entry[3]) 
      gcount["Heterozygous"] += 1 
    elsif homozygous_genotypes_array.include?(entry[3])
	  gcount["Homozygous"] += 1
    elsif nucleotides.include?(entry[3])
      gcount["Haploid"] += 1  
    else
      gcount["Missing"] += 1 
    end
  }
  gcount.each {|genotype, count| puts "There are " + count.to_s + " " + genotype + " data points"}
end

chromosome_count(my_genome_array)
puts "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
genotype_count(my_genome_array)



# I can't remember what I was doing with this hash. This is why it's so important to comment on your code, even if you're the only one who will ever read it.
# rs_hash = {}
# my_genome_array.each {|entry|
#   rs_hash[entry[0]] = entry[3]
#   }
# print rs_hash