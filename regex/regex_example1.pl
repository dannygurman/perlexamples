#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $line = 'The time has come to speak';
# . is wildcard - match anything almost
if ($line =~ / h.s /){
    print("found")
} else {
    print("not found")
}
