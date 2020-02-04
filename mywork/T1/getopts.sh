while getopts n:c:m:s options; do 
	case "$options" in
		n) name= $optarg;;
		-c) class=${optarg} ;;
		m) marks= $optarg;;
		s) sports= $optarg;;
	esac
done

echo "$class"

