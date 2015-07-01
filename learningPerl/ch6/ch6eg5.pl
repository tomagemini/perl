#!/usr/bin/perl -w
# Program Name: ch6eg5.pl
# Date: 2015/05/25
# Object: Chapter 6 book examples
use strict;
use 5.010;

say "The %ENV hash";

print "PATH is $ENV{PATH}\n";

#add element to environment youself
#Bash:
#$ CHARACTER=Fred; export CHARACTER
#$ export CHARACTER=Fred
#csh:
#% setenv CHARACTER Fred
#DOS or Windows command
#C:> set CHARACTER=Fred
#Then you can use:
#print "CHARATCER is $ENV{CHARACTER}\n"
