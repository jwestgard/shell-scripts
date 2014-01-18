#!/bin/bash

###########################################################################################
# This shell script finds all .xml files in the specified directory, pipes the found set  #
# to awk, which replaces saves the old path & name, then modifies the file name in the    #
# active record to be [parentdir]-[filename].xml, finally prints a 'mv' command with the  #
# old path/name and new path/name, and pipes the copy commands to the shell for execution.#
# ==> To execute: $ ./rename.sh [dirname]                                                 #
###########################################################################################

find "$@" -name "*.xml" | 
awk 'BEGIN { FS="/"; OFS="/" }
{ old=$0; $NF=$(NF-1)"-"$NF; print "mv " old " " $0 }' | sh