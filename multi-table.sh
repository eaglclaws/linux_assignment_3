#20181672 Ko, Seokhyeon
lval=$1
rval=$2

if [ "$lval" = "" ] || [ "$rval" = "" ]; then
	echo Invalid input
	exit
elif ((lval <= 0)) || ((rval <= 0)); then
	echo Input must be greater than 0
	exit
fi

for left in $(seq $lval); do
	for right in $(seq $rval); do
		echo -n "$left*$right=$(((left * right)))"
		printf '\t'
	done
	echo
done
