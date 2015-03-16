#!/usr/bin/perl

use strict;
use warnings;

sub palin {
    my ($middle, $num_ref) = @_;
    my @nums = @$num_ref;
    my $num_size = @nums;
    my @stack;

    # The middle limit is different from odd and even length numbers
    my $mid_palin = $middle;
    if (($num_size % 2) eq 0){
        $mid_palin = $middle + 1;
    }

    for (my $i=0; $i<$mid_palin; $i++){
        push (@stack, $nums[$i]);
        pop (@nums);
    }

    @stack = reverse(@stack);
    @nums = (@nums, @stack);
    my $pal = join ('', @nums);
    return $pal;
}

my $input_no = <>;
chomp $input_no;

for (my $i=0; $i<$input_no; $i++) {
    my $input = <>;
    chomp $input;
    $input =~ s/^0+//g;
    my @nums = split ('',$input);
    my $middle = int($#nums/2);
    my $middle_value = $nums[$middle];
    my $palindrome = 0;

    while ($palindrome <= $input){
        $nums[$middle] = $middle_value++;
        $palindrome = palin($middle,\@nums);
    }

    print $palindrome . "\n";
}

