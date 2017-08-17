#!/usr/bin/env perl

# Question 5
# Write a subroutine to accept two numbers as arguments, and return the product.

use strict;
use warnings;

sub mul {
    my ($a, $b) = @_;
    return $a * $b;
}

print "43 * 5 = ", mul (43, 5), "\n";
