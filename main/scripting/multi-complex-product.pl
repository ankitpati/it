#!/usr/bin/env perl

# Question 8
# Accept and store an arbitrary number of complex numbers from the user.
# Use the subroutine from Question 7 to find their product.

use strict;
use warnings;

sub cmpmul {                                        # function from Question 7
    my ($a, $b) = @_;

    return {
        r => $a->{r} * $b->{r} - $a->{i} * $b->{i}, # real
        i => $a->{r} * $b->{i} + $a->{i} * $b->{r}, # imaginary
    };
}

print <<"EOF";
Enter complex numbers to be multiplied.
    Real & Imaginary parts separated by space,
    numbers separated by newline,
    blank line to terminate.

EOF

my $result = {
    r => 1,
    i => 0,
};

while (<>) {
    chomp;
    last unless $_;

    my @parts = split ' ';
    $result = cmpmul $result, {
        r => $parts[0],
        i => $parts[1],
    };
}

print "Result = $result->{r} + $result->{i}i\n";
