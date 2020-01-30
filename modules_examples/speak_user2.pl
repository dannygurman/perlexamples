#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

#use Speak2;
use Speak2 qw(test greet);

$|=1;

sub main {
    # since we using exporter we do NOT need to use
     # the test with the Speak2 prefix-   Speak2::test();
    test();
    greet();
}

main();


