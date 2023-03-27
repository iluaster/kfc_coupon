perl -pe 's/(\$.*)/\1\./g;s/\n/,/g;s/(\$\ \d*)\./\1\n/g' raw.txt | sort -n -k 2 -t '$' | perl -pe 's/,,/\n/g' | sed '1,2d' > output.txt 
