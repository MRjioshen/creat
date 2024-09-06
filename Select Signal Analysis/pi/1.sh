less dn.windowed.pi | awk '$4>=10' >> dn.snp10.windowed.pi
less dn.snp10.windowed.pi | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5,-(log($5)/log(10))}'>> dn.snp10.log.pi
sed -i 's/ /\t/g' dn.snp10.log.pi
less dn.snp10.log.pi | awk 'NR>=2' >> dn.snp10.log2.pi
rm -f dn.snp10.log.pi
sed '1 i CHROM\tBIN_START\tBIN_END\tN_VARIANTS\tPI\tPi_value' dn.snp10.log2.pi >> dn.snp10.log2.head.pi
rm -f dn.snp10.log2.pi
