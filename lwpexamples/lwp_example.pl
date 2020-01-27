#!/usr/bin/perl
use strict;
use warnings;
use LWP::Simple;

sub my_main {
    print "Downloading..\n";
   # print (get("https://caveofprogramming.com/"));

    # store a file
    my $status_code = getstore("https://caveofprogramming.com/", "home.html");
    if ($status_code == 200) {
        print "success\n";
    }
    else {
        print "fail\n";
    }

    print "Finished.\n";
}

my_main();


