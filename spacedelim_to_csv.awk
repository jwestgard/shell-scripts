BEGIN {
	OFS=","
}

{
	for (i=1; i<=NF; i++) {	
		gsub("\"","\\\"",$i)
		if ($i ~/,/) {
			$i="\"" $i "\""
		}
	}

	$1=$1
	print
}
