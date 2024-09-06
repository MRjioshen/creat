cat allbreed.list | xargs -I {} find . -type f   -name "{}_LDdecay.stat.gz" >> name.list
cut -d / -f 2  name.list  >> list.txt
paste list.txt allbreed.list  >> paste.txt
