#!/bin/bash
# Command Line Parameters

echo "File Name: $0"
echo "First Parameter: ${1}"
echo "Second Parameter: $2"
echo "Third Parameter: ${3}"
echo "Fourth Parameter: $4"
echo "Fifth Parameter: ${5}"
echo "Ninth Parameter: $9"
echo "Tenth Parameter: ${10}"
echo "Eleventh Parameter: ${11}"

echo "Quoted Values: $@"
echo "Quoted Values: $*"

echo "No. of Parameters $#"
