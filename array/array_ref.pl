#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my @array =  ("one", "two","three","four");
my $array_ref = \@array;
print($array_ref);
#ARRAY(0x26ce830)

print($array_ref->[0]);
# one
print(${$array_ref}[0]);
# one

print("-----------\n");
print(@{$array_ref});
#onetwothreefour
print("-----------\n");

#f we are de-referencing a simple scalar variable, then we can omit the braces as shown below.
print(@$array_ref);
#onetwothreefour
print("-----------\n");



#The Perl array reference can also be passed to a subroutine as shown below
#my @numbers = (11,2,3,45);
# $array_ref = add_numbers(\@numbers);


#In Perl, $ { VAR } [ $y] can be written as VAR->[$y].
#$ { $array_ref } [2]  is same as $array_ref->[2]
#$ { $ { $array_ref } [2] } [2] is same as $array_ref->[2]->[2]
#$ { $ { $ { $array_ref } [2] } [2] } [1] is same as $array_ref->[2]->[2]->[1]

