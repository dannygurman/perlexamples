#!/usr/bin/perl
use strict;
use warnings;

# input_text_replace.txt content:
# abc def hij
# klm egg nop qrs

# Output:KLM egg nop qrs

sub parsing_example {
    my $in_file = 'input_text_replace.txt';
    my $out_file = 'output1.txt';

    #INPUT used instead of file handler. upper case in convention
    open(my $in_file_handler, $in_file) or die( "Input file not found\n");
    open(my $out_file_handler, '>'.$out_file) or die( "Cant create output \n");

    #Read single line + new line
    while ( my $line = <$in_file_handler>){
        print("$line ");
        # If this line has the word "egg" in it, write it
        #also - replacing klm with KLM
        # to the output file, otherwise ignore it.
        # \b matches the edges (boundaries) of words.
        if($line =~ /\begg\b/) {
            $line =~ s/klm/KLM/ig;
            print $out_file_handler $line;
        }
        if ($line =~ s/cd/12/ig ){
            print "found\n" ;
        }
    }
    close ($in_file_handler);
    close ($out_file_handler);
}

parsing_example()


