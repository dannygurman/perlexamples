#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Data::Dumper;

#Array contains source ip and destination ip
my @IP = ('192.168.1.10','192.168.1.15');

#Array contains the source port and destination port numbers
my @PORT = ("5000","5002");

#Sublayers of TCP layer
my @TCP = ("Q931","H225","H245");

#Common layers are available in a TCP packet.
my @LAYER = ("ETHERNET","IP",\@TCP);

my @PKT = (
    \@IP,
    \@PORT,
    \@LAYER
);
#Storing the reference of @PKT array into the scalar variable.
my $array_ref = \@PKT;


print Dumper($array_ref);
