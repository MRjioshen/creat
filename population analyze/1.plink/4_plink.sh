### extract non_LD sites
plink -bfile cattle.snp --extract cattle.snp.prune.in --make-bed  --chr-set 29  --out cattle.snp.prune
