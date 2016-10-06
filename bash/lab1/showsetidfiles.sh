#!/bin/bash
#
# lists all the setuid and setgid regular files in the /usr directory tree

echo "SetUID files"
echo "------------"
find /usr -type f -executable -perm -4000 -ls

cat <<EOF
SetGID files
------------
EOF
find /usr -type f -executable -perm -2000 -ls
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help