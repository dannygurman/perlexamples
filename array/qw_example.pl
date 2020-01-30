#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# Initialising a String as the parameter of qw
# operator whose each element is extracted.
my @string = qw(GfG is a computer science portal);
foreach my $key (@string) {
    print"Element is: $key\n";
}
https://www.thegeekstuff.com/2010/06/perl-exporter-examples/