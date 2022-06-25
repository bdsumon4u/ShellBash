#!/bin/bash

: '
[COMMAND] <<[-] 'DELIMITER' [pipe or redirect]
  HERE-DOCUMENT
DELIMITER
'

# Variable Can Be Accessed
cat << EOF
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF
echo

# Variable Will Remain As It Is
cat <<- "EOF"
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF
echo

# Variable Will Remain As It Is
cat <<- EOF | grep directory
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF
echo

# 'l' Will Be Replaced By 'e'; Redirect To File
cat <<'EOF' |  sed 's/l/e/g' > 10.heredoc.txt
Hello
World
EOF

# Use of '-' after '<<' is a mistry.
if true; then
    # Leading Tab Will Remain As It Is
    cat <<- EOF
    # Comment Will Remain As It Is
    Line with a leading tab.
EOF
# Do Not Start With
# Leading Whitespace
fi

if true; then
    # Leading Tab Will Remain As It Is
    cat << EOF
    # Comment Will Remain As It Is
    Line with a leading tab.
EOF
# Do Not Start With
# Leading Whitespace
fi
