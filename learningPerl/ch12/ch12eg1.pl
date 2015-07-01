#!/usr/bin/perl -w
# File Name: ch12eg1.pl
# Date: 2015/06/08
# Object: Chapter 12 book examples
use strict;
use 5.016;

say 'Table 12-1. File tests and their meanings';

my %fileTests = (
    r => 'File or directory is readable by this (effective) user or
    group',
    w => 'File or directory is writable by this (effective) user or
    group',
    x => 'File or directory is executable by this (effective) user or
    group',
    o => 'File or directory is owned by this (effective) user',
    R => 'File or directory is readable by this real user or group',
    W => 'File or directory is writable by this real user or group',
    X => 'File or directory is executable by this real user or group',
    O => 'File or directory is owned by this real user',
    e => 'File or directory name exsits',
    z => 'File exists and has zero size (always false for
    directories)',
    's' => 'File or directory exists and has nonzero size (the value is
    the size in bytes)',
    f => 'Entry is a plain file',
    d => 'Entry is a directory',
    l => 'Entry is a symbolic link',
    S => 'Entry is a socket',
    p => 'Entry is a pipe (a "fifo")',
    b => 'Entry is a block-special file (like a mountable disk)',
    c => 'Entry is a character-special file (like an I/O device)',
    u => 'File or directory is setuid',
    g => 'File or directory is setgid',
    k => 'File or directory has the sticky bit set',
    t => 'The filehandle is a TTY (as reported by the isatty() system
    function; filenames can\'t be tested by this test)',
    T => 'File looks like a "text" file',
    B => 'File looks like a "binary" file',
    M => 'Modification age (measured in days)',
    A => 'Access age (measured in days)',
    C => 'Inode-modification age (measured in days)',
    );

foreach my $key (sort keys %fileTests)
{
    say "-$key\t$fileTests{$key}";
}
