#!/bin/bash

main() {
	local dir
	local path=$(pwd)

	cd ../
	while read dir; do
		pushd ${dir} &> /dev/null
		echo "git status ${dir}"
		git status
		popd &> /dev/null
	done < ${path}/list.in
}

main "$@"
