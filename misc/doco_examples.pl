#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "Hello, World\n";

=head1 Hello, World Example
This example demonstrate very basic syntax of Perl.
=cut

#POD Pod is a simple-to-use markup language
print "Hello, Universe\n";

=head2 An Example List

=over 4
=item * This is a bulleted list.
=item * Here's another item.
=back
=begin html
<p>
Here's some embedded HTML.  In this block I can
include images, apply <span style="color: green">
styles</span>, or do anything else I can do with
HTML.  pod parsers that aren't outputting HTML will
completely ignore it.
</p>

=end html

# When you convert the above POD into HTML using pod2html, it will produce the following result −

An Example List
   This is a bulleted list.
   Here's another item.
Here's some embedded HTML. In this block I can include images, apply
styles, or do anything else I can do with HTML. pod parsers that aren't
outputting HTML will completely ignore it.
