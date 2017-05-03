#!/bin/sh

reply="instantclient,/usr/lib/oracle/11.2/client64/lib"

expect -c "
spawn pecl install oci8-1.4.10
expect \"ORACLE_HOME\"
send \"${reply}\n\"
expect \"$\"
exit 0
"
