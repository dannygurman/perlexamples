#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$|=1;

# Using Escape

sub parsing_example {
    # \d digit
    # \s space
    # \S Non-spcee
    # \w alphanumeric

    my $text = ' I am   117 years old tomorrow.' ;
   #  my $regx = '(\d+)'; # match 117
    my $regx = '(am\s+\d+)'; # match 'am   117'

    if ($text =~ /$regx/){
        print "Matched '$1' \n"
    }
}

parsing_example()