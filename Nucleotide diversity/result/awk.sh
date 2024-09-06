for i in `cat allbreed.list`
do
    awk '{print $5}' ${i}.windowed.pi > ./result/${i}.pi
done
