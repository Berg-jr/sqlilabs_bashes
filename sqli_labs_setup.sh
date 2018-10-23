#!/bin/sh

#current directory
crnt_dr=$(pwd)
#destination directory
dst_dr=/var/www/

#move to /var/www/html/ and use git command
cd $dst_dr;
echo "moved to $dst_dr";
ls ;
mkdir html;
cd html;
echo "create new directory html/ under $dst_dr";
echo "";
git clone https://github.com/Rinkish/Sqli_Edited_Version;
ls ;
mv Sqli_Edited_Version/sqlilabs $(pwd);

#this section to setup for db-cerds.inc
sed -i "s/\$dbpass ='';/\$dbpass ='root';/";

#chmod
echo "move to /var/www/hmtl from $(pwd)"
cd $dst_dr/html;
echo "change the permission, sqli-labs"
chmod 777 sqli-labs;
echo "move to /var/www/hmtl/sqli-labs from $(pwd)"
cd $dst_dr/html/sqli-labs;
chmod 777 *;

echo "All setup was finished. Return to $crnt_dr"
cd $crnt_dr;
