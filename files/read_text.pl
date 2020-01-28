#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

sub parsing_example {
    my $file = 'input1.txt';
    #INPUT used instead of file handler. upper case in convention
    open(INPUT, $file) or die( "Input file not found\n"); # kill if not opened - die will not run if first part is true
    #Alterntive -    open(my %file_handler, $file) or die
    #Read single line + new line
    while ( my $line = <INPUT>){
       print("$line");
           if ($line =~ /cd/ ){
               print "found\n" ;
           }
    }
    close (INPUT);
}

parsing_example()
