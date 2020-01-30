#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# Perl program to illustrate the
# Dereferencing of a Hash

# defining hash
my %hash = ('1'=>'a', '2'=>'b', '3'=>'c');

# creating an reference to hash variable
my $reference_hash = \%hash;

# Dereferencing
# printing the value stored
# at $reference_hash by prefixing
# % as it is a hash reference
print %$reference_hash;

