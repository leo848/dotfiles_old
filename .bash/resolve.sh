resolve() {
	if [ $# -eq 0 ]
	then
		echo "$(pwd) -> $(pwd -P)"
		cd $(pwd -P)
	else
		echo "$1 -> $(readlink -f $1)"
	fi
}
