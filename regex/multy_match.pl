#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $string = 'xyz xyz';

#The g modifier matches all occurences in the string.
#  List context returns all of the matches.
# See the m// operator in perlop.my
# m// - the match operator
# g  - globally match the pattern repeatedly in the string
# i - match case-insensitive.
my @list = ($string =~  /m|x(\w+)z/g);
my $length = @list;
print($length);
