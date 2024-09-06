#### Remove LD sites
plink -bfile cattle.snp --indep-pairwise 50 5 0.2 --chr-set 29 --out cattle.snp
