#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$| = 1;

use Memoize qw(flush_cache memoize);




sub slow_function {
    print ("in slow function\n");
    my $a = shift;
    sleep(3);
    return $a
}

memoize('slow_function');

my $x = slow_function('a');    # Is faster than it was before
print($x,"\n");

$x = slow_function('a');    # Is faster than it was before
print($x,"\n");

flush_cache('slow_function');
print("\n");

$x = slow_function('a');    # again slow
print($x,"\n");


