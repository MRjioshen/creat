#!/bin/bash
#####  Vcf to  plink format
vcftools --gzvcf /stor9000/apps/users/NWSUAF/2015010869/zhaojiahao/analyze/concat/dn198.vcf.gz --plink --chrom-map chrID --out cattle.snp
#### make bed
plink --file cattle.snp --make-bed --chr-set 29 --keep-allele-order  --out cattle.snp
#### Remove LD sites
plink -bfile cattle.snp --indep-pairwise 50 5 0.2 --chr-set 29 --out cattle.snp
### extract non_LD sites
plink -bfile cattle.snp --extract cattle.snp.prune.in --make-bed --chr-set 29 --out cattle.snp.prune --keep final.list
