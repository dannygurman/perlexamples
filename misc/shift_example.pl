#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

syntax:
# shift ( [ARRAY] )
# shift
# This function returns the first value in an array,
# deleting it and shifting the elements of the array list to the left by one.

#  If ARRAY is not specified, shifts the @_ array within a subroutine, or @ARGV otherwise.
#  shift is essentially identical to pop, except values are taken from the start
#  of the array instead of the end.

#@_: Within a subroutine the array @_ contains the parameters passed to that subroutine

#Perl command line arguments stored in the special array called @ARGV

my @array = (1..5);
while (my $element = shift(@array)) {
    print("$element - ");
}
print("The End\n");
