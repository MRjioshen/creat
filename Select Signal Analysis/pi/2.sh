python3 /stor9000/apps/users/NWSUAF/2017060165/Script/cal_empirical_Pvalue.py --infile dn.snp10.log2.head.pi --val-col Pi_value --outfile dn.empirical_Pvalue
python3 /stor9000/apps/users/NWSUAF/2017060165/Script/cal_norm_isf.py --infile dn.snp10.log2.head.pi --chr-col CHROM --val-col Pi_value --outprefix dn
