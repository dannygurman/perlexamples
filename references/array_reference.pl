#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# Perl program to illustrate the Dereferencing of an Array

# defining an array
my @array = ('1', '2', '3');

# making an reference to an array variable
my $reference_array = \@array;

# Dereferencing
# printing the value stored
# at $reference_array by prefixing
# @ as it is a array reference
print @$reference_array;

