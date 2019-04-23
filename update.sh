#!/usr/bin/env bash

generated_warning() {
	cat <<-EOH
		#
		# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
		#
		# PLEASE DO NOT EDIT IT DIRECTLY.
		#
	EOH
}

VERSIONS="
5.6
5.5
7.0
7.1
7.2
7.3
"

for version in ${VERSIONS}; do
    rm -rf ${version}
    mkdir -p ${version}

    generated_warning > ${version}/Dockerfile
    sed -e 's!%%PHP_VERSION%%!'"${version}-alpine"'!' Dockerfile.template >> ${version}/Dockerfile
done

rm -rf Dockerfile
cp Dockerfile.template Dockerfile

generated_warning > Dockerfile
sed -e 's!%%PHP_VERSION%%!'"alpine"'!' Dockerfile.template >> Dockerfile