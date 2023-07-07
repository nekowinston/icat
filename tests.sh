#!/usr/bin/env -S bash -euo pipefail

TESTFILES=(
	"red.png"
	"green.svg"
	"blue.mp4"
)

for file in "${TESTFILES[@]}"; do
	echo "Testing $file, append mode"
	./icat.sh "./test-data/${file}"
done

for file in "${TESTFILES[@]}"; do
	echo "Testing $file, stdin mode"
	./icat.sh <"./test-data/${file}"
done

for file in "${TESTFILES[@]}"; do
	echo "Testing $file, url mode"
	./icat.sh "https://git.winston.sh/winston/icat/raw/branch/main/test-data/${file}"
done
