#!/usr/bin/env perl

# Question 4
# Accept a 2D matrix from the user, and print its transpose.

use strict;
use warnings;

my ($mat, $trn);

print <<'EOF';
Enter a matrix.
    Elements separated by space,
    rows separated by newline,
    blank line to terminate.

EOF

my $i = 0;
while (<>) {
    chomp;
    last unless $_;
    $mat->[$i++] = [split ' '];
}

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
