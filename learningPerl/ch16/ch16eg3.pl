#!/usr/bin/perl -w
# File Name: ch15eg3.pl
# Date: 2015/06/16
# Object: Chapter 16 book examples
use strict;
use 5.016;

say 'Processes as Filehandles';

#two argument form:
#oepn DATE, 'date|' or die "Cannot pipe from date: $!"; ## similar to
#date|your_program
#open MAIL, '|mail merlyn' or die "Cannot pipe to mail :$!"; ## similar to
#your_program|mail merlyn

#three-argument form:
#open my $date_fh, '-|', 'date' or die "Cannot pipe from date: $!"; ## -| means
#read filehandle
#open my $mail_fh, '|-', 'mail merlyn' or die "Cannot pipe to mail: $!"; ## |-
#means write filehandle

#more than three argument:
#The fourth and subsequential arguments become the argument to the command
#open my $mail_fh, '|-', 'mail', 'merlyn' or die "Cannot pipe to mail: $!";

#find all the files that have not been accessed within the past 90 days and
#that are larger than 1000 blocks.
open my $find_fh, '-|', 'find', qw(/ -atime +90 -size +1000 -print) or die
	"fork: $!";
while(<$find_fh>)
{
	chomp;
	printf "%s size %dK last accessed %.2f days ago\n", $_, (1023 + -s $_) /
		1024, -A $_;
}
