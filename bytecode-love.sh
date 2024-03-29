#!/bin/sh
# usage: ./bytecode-love.sh <source directory>
WD=`pwd` # determine working directory
TEMP=`mktemp -d` # create a temporary directory
root_directory="../PPARoadToImortal"
cp -Rv $1/* $TEMP # copy your source code to temp
cd $TEMP # move to temp
for file in $(find . -iname "*.lua") ; do # for each lua file recursively
 luasrcdiet ${file} --maximum >> $WD/$1$root_directory-minimize.log #minimize file
 new_file="${file%.*}_.lua"
 luajit -b ${new_file} ${file} # compile the code with luajit onto itself
 rm -f ${new_file}
done
zip -r $WD/$1$root_directory-`arch`.love * # zip the result up
rm -rf $TEMP # cleanup
