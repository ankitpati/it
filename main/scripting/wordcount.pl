#!/usr/bin/env perl

# Question 2
# Count the number of words in a user-entered paragraph.

use strict;
use warnings;

print "String?\n";
chomp (my $para = <>);

print "Number of words: ", scalar split (/\s/, $para), "\n";
