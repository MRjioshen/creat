for i in dn
do
    less $i.windowed.pi | awk '$4>=10' >> $i.snp10.windowed.pi
    less $i.snp10.windowed.pi | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5,-(log($5)/log(10))}'>> $i.snp10.log.pi
    sed -i 's/ /\t/g' $i.snp10.log.pi
    less $i.snp10.log.pi | awk 'NR>=2' >> $i.snp10.log2.pi
    rm -f $i.snp10.log.pi
    sed '1 i CHROM\tBIN_START\tBIN_END\tN_VARIANTS\tPI\tPi_value' $i.snp10.log2.pi >> $i.snp10.log2.head.pi
    rm -f $i.snp10.log2.pi
    python3 /stor9000/apps/users/NWSUAF/2017060165/Script/cal_empirical_Pvalue.py --infile $i.snp10.log2.head.pi --val-col Pi_value --outfile $i.empirical_Pvalue
    python3 /stor9000/apps/users/NWSUAF/2017060165/Script/cal_norm_isf.py --infile $i.snp10.log2.head.pi --chr-col CHROM --val-col Pi_value --outprefix $i
    python3 /stor9000/apps/users/NWSUAF/2017060165/Script/plot_Manhattan.py --infile $i.snp10.log2.head.pi --loc-col BIN_START --val-col Pi_value --chr-col CHROM --cutoff $i.json --xlabel CHROM --ylabel PI --ylim 2.5 5.5 --axlabelsize 20 --markersize 12 --ticklabelsize 20 --figsize 20  7 --outfile $i_PI.pdf
done
