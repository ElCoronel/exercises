#!/bin/bash
### using test.data find entries with hosts with 3 processes where one is named proc03 ###
### remove output file if it exists ###
if [ -f test.out ]
	then
		rm test.out
fi

### count occurences of hostnames and filter for only those with results of 3 ###
for i in `cat test.data | awk -F ',' '{print $1}' | sort -nr | uniq -c | grep '3 '`; do
     echo $i | grep host >> test.out
done

### using output from above find hosts with proc03 entry ###
for i in `cat test.out`; do
    cat test.data | grep $i | grep proc03
done
