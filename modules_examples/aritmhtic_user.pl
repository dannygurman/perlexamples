#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
#
# use Arithmetic” statement imports the subroutines from
#     Arithmetic module that are exported by default.

# use Arithmetic qw(multiply divide)” indicates that these two routines gets exported
#     only when it is specifically requested as shown in the following code snippet.

use Arithmetic;
use Arithmetic qw(multiply divide);

print add(1,2),"\n";
print multiply(1,2),"\n";
