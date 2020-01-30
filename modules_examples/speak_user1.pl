#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Speak1;

$|=1;

sub main {
     Speak2::test();
     Speak2::greet();
}

main();


