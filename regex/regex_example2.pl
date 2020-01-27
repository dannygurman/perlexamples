#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $line = 'abc def abc def';
# ( for groups))
# g flag at the end means that you can apply the regex to the string multiple times.
#  The second time it will continue matching where the last match ended in the string.
while ($line =~ /(a...d.)/g){
    print("$1\n");
    # print "$_\n" for $1, $2;
}

print ("-----------------------\n");
if ($line =~ /(ab)(...)/){
    print "->$_\n" for $1, $2;
}
