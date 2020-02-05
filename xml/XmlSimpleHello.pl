#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use XML::Simple;
my $xs = new XML::Simple();
my $ref = $xs->XMLin("<p>xxx</p>");
my $xml = $xs->XMLout($ref);
print $xml;
exit;
