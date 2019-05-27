#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################

mainstart () {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 PG Box Apps Interface Selection       📓 Reference: pgbox.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬  PG Box installs a series of Core and Community applications!

[1] PG Box: Core
[2] PG Box: Community
[3] PG Box: Removal
[Z] Exit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

# Standby
read -p 'Type a Number | Press [ENTER]: ' typed < /dev/tty

if [ "$typed" == "1" ]; then
  bash /pg/pgblitz/menu/pgbox/pgboxcore.sh
elif [ "$typed" == "2" ]; then
  bash /pg/pgblitz/menu/pgbox/pgboxcommunity.sh
elif [ "$typed" == "3" ]; then
  bash /pg/pgblitz/menu/removal/removal.sh
elif [ "$typed" == "Z" ] || [ "$typed" == "z" ]; then
exit
else
mainstart
fi
}

mainstart
