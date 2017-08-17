#!/usr/bin/env perl

# Question 6
# Write a subroutine to de-duplicate a list.

use strict;
use warnings;

sub uniq {
    keys %{{ map { $_ => 1 } @_ }};
}

my @list = qw(alpha bravo charlie delta alpha charlie echo foxtrot);

print "Original List:\n";
print "$_ " foreach @list;
print "\n\n";

print "De-duplicated List:\n";
print "$_ " foreach uniq @list;
print "\n\n";
