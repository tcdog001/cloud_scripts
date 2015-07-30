#!/bin/bash

main() {
	local dir
	local path=$(pwd)

	cd ../
	while read dir; do
		pushd ${dir} &> /dev/null
		echo "git pull ${dir}"
		git pull
		popd &> /dev/null
	done < ${path}/list.in
}

main "$@"
