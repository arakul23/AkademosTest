<?php

function carry(array $arr) : int
{
    $arr1 = str_split($arr[0]);
    $arr2 = str_split($arr[1]);
    $carrySum = 0;

    foreach ($arr1 as $key => $value) {
        if ($arr1[$key] + $arr2[$key] >= 10) {
            $carrySum += 1;
        }
    }

    return $carrySum;
}

echo carry([123, 456]) . '<br>'; // 0
echo carry([555, 555]) . '<br>'; // 3
echo carry([123, 594]) . '<br>'; // 1