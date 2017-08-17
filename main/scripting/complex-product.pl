#!/usr/bin/env perl

# Question 7
# Write a subroutine that takes two complex numbers as arguments,
# and returns the product.

use strict;
use warnings;

sub cmpmul {
    my ($a, $b) = @_;

    return {
        r => $a->{r} * $b->{r} - $a->{i} * $b->{i}, # real
        i => $a->{r} * $b->{i} + $a->{i} * $b->{r}, # imaginary
    };
}

my $q = {
    r => 43,
    i =>  5,
}; # 43 + 5i

my $w = {
    r =>  7,
    i => 50,
}; # 5 + 43i

my $result = cmpmul $q, $w;

print "(43 + 5i)*(5 + 43i) = $result->{r} + $result->{i}i\n";
