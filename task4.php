<?php

function carry(array $arr) : int
{
    $arr1 = str_split($arr[0]);
    $arr2 = str_split($arr[1]);
    $arr1 = array_reverse($arr1);
    $arr2 = array_reverse($arr2);
    $carrySum = 0;

    foreach ($arr1 as $key => $value) {
        $digit1 = isset($arr1[$key]) ? $arr1[$key] : 0;
        $digit2 = isset($arr2[$key]) ? $arr2[$key] : 0;
        if ($digit1 + $digit2 >= 10) {
            $carrySum += 1;
        }
    }

    return $carrySum;
}

echo carry([1254, 9999]) . '<br>'; // 4
echo carry([555, 555]) . '<br>'; // 3
echo carry([123, 594]) . '<br>'; // 1
echo carry([123, 594]) . '<br>'; // 1
echo carry([90, 1]) . '<br>'; // 0
echo carry([0, 0]) . '<br>'; // 0
echo carry([45, 55]) . '<br>'; // 1
echo carry([1, 99]) . '<br>'; // 1