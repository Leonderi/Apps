#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################

# BAD INPUT
badinput () {
echo
read -p '⛔️ ERROR - BAD INPUT! | PRESS [ENTER] ' typed < /dev/tty
question1
}

# FUNCTION - ONE
question1 () {

# Recall Program
image=$(cat /pg/tmp/program_var)

# Checks Image List
file="/pg/apps/apps/image/$image"
if [ ! -e "$file" ]; then exit; fi

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌵  PG Multi Image Selector - $image
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF

count=1
while read p; do
  echo "$count - $p"
  echo "$p" > /pg/tmp/display$count
  count=$[count+1]
done </pg/apps/apps/image/$image
echo ""
read -p '🚀  Type Number | PRESS [ENTER]: ' typed < /dev/tty

  if [[ "$typed" -ge "1" && "$typed" -lt "$count" ]]; then
  mkdir -p /pg/var/image
  cat "/pg/tmp/display$typed" > "/pg/var/image/$image"
else badinput; fi
}

# END OF FUNCTIONS ############################################################

question1
