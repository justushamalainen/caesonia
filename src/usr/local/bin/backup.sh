#!/bin/sh

DIR="/home/janitor"
ARC="mail1.tar.gz"

tar -czv -f "${DIR}"/backup/"${ARC}" -I "${DIR}"/backup/include

#tar -C "${DIR}"/backup/extract -xzpf "${DIR}"/backup/"${ARC}"
