#!/usr/bin/env perl

# Question 3
# Define a 2D matrix, and print its transpose.

use strict;
use warnings;

my $mat = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [0, 1, 2],
];

my $trn;

print "Original Matrix:\n";
foreach my $row (@$mat) {
    print "$_ " foreach @$row;
    print "\n";
}
print "\n";

for my $i (0 .. scalar @$mat - 1) {
    for my $j (0 .. scalar @{$mat->[$i]} - 1) {
        $trn->[$j][$i] = $mat->[$i][$j];
    }
}

print "Transpose Matrix:\n";
foreach my $row (@$trn) {
    print "$_ " foreach @$row;
    print "\n";
}
print "\n";
