#This script is to be run in R 

library(SeqArray)

#snp_vcf <- "/home/mehra.s/cambodia_drug_res/vcf/cambodia_genotyped_VQSR_pass_core_snpeff.vcf"
snp_vcf <- "filepath/VQSR_pass_core_snpeff.vcf"
#snp_gds <- "/home/mehra.s/cambodia_drug_res/vcf/cambodia_genotyped_VQSR_pass_core_snpeff.gds"
snp_gds <- "filepath/genotyped_core_snps.gds"
vcf_header <- seqVCF_Header(snp_vcf)

# recode header format for AD from R to .
vcf_header$format$Number[vcf_header$ID == "AD"] <- "."

# info columns to retain
info.import <- c("AC", "AF", "AN", "BaseQRankSum", "DP", "DS",
                 "FS", "InbreedingCoeff", "MQ",
                 "MQRankSum", "QD", "ReadPosRankSum", "SOR", "ANN")

# format columns to retain
format.import <- c("AD", "DP", "GQ", "GT", "PL", "RGQ", "SB")

# convert VCF to GDS
seqVCF2GDS(snp_vcf, snp_gds, header=vcf_header, info.import=info.import, fmt.import=format.import)


 
