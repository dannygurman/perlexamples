package Speak2;

use Exporter qw(import);

#GLOBAL Variable @EXPORT_OK use before the use strict so we will not get an error !!!
@EXPORT_OK = qw(test greet);
# @EXPORT = qw(test);

use warnings FATAL => 'all';
use strict;

sub test {
    print "Hello there.\n";
}

sub greet {
    print "Hey, how's it goin?\n";
}


1; #Like return 1