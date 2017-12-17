#!/usr/bin/env bash

dir=${1:-${PWD}};
read -s -p "Enter Password:" password;
printf "\n";

if ! [[ $password ]]; then
    printf "\nPassword can NOT be empty\n";
    exit 1;
fi

if ! [[ -d $dir ]]; then
    printf "$dir: NOT exist\n";
    exit 1;
fi

for f in ${dir}/*.pdf; do
    printf "encrypting $f ...\n";
    qpdf --encrypt $password $password 40 -- $f ${f/%.pdf/_protected.pdf};
done

printf "encrypting done\n";

