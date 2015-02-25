#!/usr/bin/perl

# Written by Jean Dominique Jaymalin

use strict;
use warnings;

my @stack;
my @operators = ('+', '-', '*', '/', '^');
my @inputs;

my $inputNo = <>;
chomp $inputNo;

for (my $i=0; $i<$inputNo; $i++){
    my $exp = <>;
    chomp $exp;

    my $expression;
    my @chars = split('',$exp);

    foreach my $char (@chars){
        if ($char eq '('){
                next;
        }
        if ($char eq ')'){
                my $op = pop(@stack);
                $expression = $expression . $op;
                next;
        }
        if ($char ~~ @operators){
                push (@stack, $char);
                next;
        }
        if ($char =~ /^[A-za-z]$/) {
                $expression = $expression . $char;
                next;
        }
    }
    print "$expression\n";
}
