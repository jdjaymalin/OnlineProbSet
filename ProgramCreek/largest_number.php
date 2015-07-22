<?php

    /**
     *Solution foe LeetCode - Largest Number in PHP
     *http://www.programcreek.com/2014/02/leetcode-largest-number-java/
     */

    $numbers = array (3,30,34,9,5);
    $maxlen = max(array_map('strlen', $numbers));
    $multiplier = pow(10,$maxlen);

    $new_arr = array();
    foreach ($numbers as $num){
        if (strlen ($num) == 1){
            $num *= $multiplier;
        }
        array_push($new_arr,$num);
    }

    rsort($new_arr,SORT_STRING);
    $result = '';
    foreach ($new_arr as $num){
        if (strlen($num) > $maxlen){
            $num /= $multiplier;
        }
        $result .= $num;
    }

    print $result;
