/stor9000/apps/users/NWSUAF/2012010954/Software/plink -bfile /stor9000/apps/users/NWSUAF/2015010869/zhaojiahao/analyze/2.population/1.plink/cattle.snp --chr-set 29 --distance-matrix --out dncattle
perl plink.distance.matrix.to.mega.pl DNcattle.id dncattle.mdist 198 dncattle.NJtree
