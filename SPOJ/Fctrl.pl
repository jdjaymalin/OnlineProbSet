#!/usr/bin/perl

use strict;
use warnings;

my $inputNo = <>;
chomp $inputNo;

for (my $i=0; $i<$inputNo; $i++){
    my $input = <>;
    chomp $input;

    my $divisor = 5;
    my $count = 0;
    my $quo = 1;

    while ($quo >= 1) {
        $quo = $input/$divisor;
        $divisor *= 5;
        $count += int $quo;
    }
    print $count . "\n";
}
