#!/usr/bin/perl
# use strict;
# use warnings FATAL => 'all';

my $var1 = "This is defined";

if( defined($var1) ) {
    print "$var1\n";
}
if( defined($var2) ) {
    print "var2 is also defined\n";
} else {
    print "var2 is not defined\n";
}