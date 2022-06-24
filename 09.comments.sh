#!/bin/bash

# Multi Line Comment Starts With `: '`
: '
First Line
Second Line
Third Line
'
# Multi Line Comment Ends With `'`

echo "Fourth Line"

# Comment Can Be Anything
<<comment
Fifth Line
Sixth Line
Seventh Line
comment
# Anyting Must Be Same

echo "Eighth Line"
