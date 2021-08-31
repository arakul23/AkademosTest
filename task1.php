<?php

function getNumOfUniqueCharacters(string $str, int $number) : int
{
    $strSplit = str_split($str);
    $count = count($strSplit);
    $equalsCount = [];

    for ($i = 0; $i <= $count - 1; $i++) {
        $equalsChars = 0;
        $tmp = null;
        for ($j = 0; $j <= $count - 1; $j++) {
            if (strcasecmp($strSplit[$i], $strSplit[$j]) === 0) {
                $tmp = $strSplit[$i];
                $equalsChars++;
            }
            if ($j === $count - 1 && $equalsChars >= $number) {
                $equalsCount[$tmp] = $equalsChars;
            }
        }
    }

    return count(array_unique($equalsCount));
}

echo getNumOfUniqueCharacters('A1B2C3', 2) . '</br>';
echo getNumOfUniqueCharacters('A1a1C1', 2) . '</br>';
echo getNumOfUniqueCharacters('Alabama', 3) . '</br>';
echo getNumOfUniqueCharacters('babayaga', 6) . '</br>';