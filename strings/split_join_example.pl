#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
#
#split /PATTERN/,EXPR,LIMIT
#split /PATTERN/,EXPR
#split /PATTERN/
#split
print join(':', split(/b/, 'abc')), "\n";
#a:c

print join(':', split(//, 'abc')), "\n";
#a:b:c

print join(':', split(//, 'abc', 1)), "\n";
#abc