less dn_pass.tsv.gz| awk '{print $1"\t"$2"\t"$3"\t"$6}' >> PI.cutoff_value
grep -v "CHROM" PI.cutoff_value > PI.cutoff_value_1
perl /stor9000/apps/users/NWSUAF/2018060158/Script/annotate_bed.pl /stor9000/apps/users/NWSUAF/2008115251/genomes/ARS-UCD1.2_Btau5.0.1Y.gff PI.cutoff_value_1 PI_value.anno PI_value.ID
python3 /stor9000/apps/users/NWSUAF/2017060165/Script/plot_Manhattan.py --infile dn.snp10.log2.head.pi --loc-col BIN_START --val-col Pi_value --chr-col CHROM --cutoff dn.json --xlabel CHROM --ylabel PI --ylim 2.5 5.5 --axlabelsize 20 --markersize 12 --ticklabelsize 20 --figsize 20  7 --outfile dn.pi.pdf
