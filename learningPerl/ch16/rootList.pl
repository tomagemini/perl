#!/usr/bin/perl -w
# File Name: rootList.pl
# Author: Yi Zhu
# Date: 2015/07/28
# Object: ch16ex1 - Changes to an hardcored directory and executes ls -l in it.
# Version: 1.10 - file name changes from ch16ex1.pl to rootList.pl
use strict;
use 5.016;

chdir '/etc' or die "Cannot chdir to /etc: $!";
system 'ls -l';
