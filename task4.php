<?php

function carry(array $arr) : int
{
    $carry = 0;

    $count = 0;

    $arr1 = str_split($arr[0]);
    $arr2 = str_split($arr[1]);

    $arr1Count = count($arr1);
    $arr2Count = count($arr2);

    while ($arr1Count !== 0 || $arr2Count !== 0)
    {
        $x = 0;
        $y = 0;

        if ($arr1Count > 0)
        {
            $x = $arr1[$arr1Count - 1];
            $arr1Count--;
        }

        if ($arr2Count > 0)
        {
            $y = $arr2[$arr2Count - 1];
            $arr2Count--;
        }

        $sum = $x + $y + $carry;

        if ($sum >= 10)
        {
            $carry = 1;
            $count++;
        }

        else
            $carry = 0;
    }

    return $count;
}

echo carry([1254, 9999]) . '<br>'; // 4
echo carry([555, 555]) . '<br>'; // 3
echo carry([123, 594]) . '<br>'; // 1
echo carry([90, 1]) . '<br>'; // 0
echo carry([0, 0]) . '<br>'; // 0
echo carry([45, 55]) . '<br>'; // 2
echo carry([1, 99]) . '<br>'; // 2