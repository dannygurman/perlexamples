#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# + is qualifier
my $line = '11121';
# . is wildcard - match anything almost
if ($line =~ /(1+)/){
    print("$1\n")
} else {
    print("not found")
}
# 1111