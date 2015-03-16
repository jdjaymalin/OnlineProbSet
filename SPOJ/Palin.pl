#!/usr/bin/perl

use strict;
use warnings;

my $input_no = <>;
chomp $input_no;

for (my $i=0; $i<$input_no; $i++) {
    my $input = <>;
    chomp $input;
    $input =~ s/^0+//g;
    my $palindrome = 0;
    my $in_legth = length $input;
    my $middle_idx = int (($in_legth-1)/2);
    my ($pal1, $pal2, $middle_val);

    if ($in_legth == 1){
        $palindrome = $input+1;
    }

    elsif (($in_legth % 2) != 0) {
        $pal1 = substr $input, 0, $middle_idx;
        $pal2 = reverse $pal1;
        $middle_val = substr $input, $middle_idx, 1;
        $pal1 = $pal1 . $middle_val;
    }

    else {
        $pal1 = substr $input, 0, $middle_idx+1;
        $pal2 = reverse $pal1;
        $palindrome = $pal1 . $pal2;
    }

    while ($palindrome <= $input){
        $pal1++;
        if (($in_legth % 2) != 0) {
            $palindrome = $pal1 . $pal2;
        }
        else {
            $palindrome = $pal1 . reverse ($pal1);
        }
    }
    print $palindrome . "\n";

}
