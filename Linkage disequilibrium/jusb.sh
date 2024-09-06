for i in `cat /stor9000/apps/users/NWSUAF/2015010869/zhaojiahao/analyze/1.SNP/3.breedlist/allbreed.list`
do
    jsub -R "rusage[res=1]span[hosts=1]" -q jynodequeue -J LD.${i} -e ${i}.e -o ${i}.o -n 8 -M 20000000 bash ${i}.LD.sh
done
