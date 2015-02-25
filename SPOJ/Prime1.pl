#!/usr/bin/perl

# Written by Jean Dominique Jaymalin

use strict;
use warnings;

sub generate_prime{
    my ($min,$max) = @_;
    my %primes;

    for (my $i=2; $i<=$max; $i++) {
        my $p = $i;
        if (!exists $primes{$p}){
            $primes{$p} = 1;
        }

        while ($p*$p <= $max){
            my $j = $p*$p;

            while ($j <= $max){
                $primes{$j} = 0;
                $j = $j+$p;
            }
            $p++ unless (exists $primes{$p++})
        }
    }

    # Ouput printing
    for my $prime (sort {$a <=> $b} keys %primes){
        if ($min <= $prime && $primes{$prime} eq 1) {
             print "$prime\n";
        }
    }
    print "\n";
}

my $inputNo = <>;
chomp $inputNo;
my %primes;

for (my $i=0; $i<$inputNo; $i++) {
    my $line = <>;
    my ($first, $last) = split(' ', $line);
    generate_prime($first,$last);
}
