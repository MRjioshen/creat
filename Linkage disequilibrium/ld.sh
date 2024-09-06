for i in `cat allbreed.list`
do
    echo "/stor9000/apps/users/NWSUAF/2018060158/software/PopLDdecay-3.40/bin/PopLDdecay -InVCF /stor9000/apps/users/NWSUAF/2015010869/zhaojiahao/analyze/1.SNP/2.listgz/$i.vcf.gz -OutStat ${i}_LDdecay -SubPop /stor9000/apps/users/NWSUAF/2015010869/zhaojiahao/analyze/1.SNP/3.breedlist/${i}" >> $i.LD.sh
done
