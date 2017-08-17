#!/usr/bin/env perl

# Question 1
# Remove duplicate characters from a user-entered string.

use strict;
use warnings;

print "String?\n";
chomp (my $str = <>);

$str = join '', keys %{{ map { $_ => 1 } split ('', $str) }};

print "\nDe-duplicated String:\n$str\n";
