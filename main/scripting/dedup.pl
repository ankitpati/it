#!/usr/bin/env perl

# Answer to Questions 1 and 6

use strict;
use warnings;

print "String?\n";
my $str = <>;               # read a line from STDIN (standard input)
chomp $str;                 # remove the trailing newline (\n) character, if any

my @chr = split '', $str;   # split the string into a character array

sub uniq {
    keys %{{ map { $_ => 1 } @_ }};
}

print "De-duplicated list of characters\n";

print "$_\n" foreach uniq @chr;
