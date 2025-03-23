<?php

function reverse_polish_notation(string $string_): array {
    $parts = explode(' ', $string_);
    $stack = [];

    foreach ($parts as $value) {
        if ($value == '+') {
            $a = array_pop($stack);
            $b = array_pop($stack);
            array_push($stack, $b + $a);
        } elseif ($value == '-') {
            $a = array_pop($stack);
            $b = array_pop($stack);
            array_push($stack, $b - $a);
        } elseif ($value == '*') {
            $a = array_pop($stack);
            $b = array_pop($stack);
            array_push($stack, $b * $a);
        } else {
            if (is_numeric($value)) {
                array_push($stack, (int)$value);
            }
        }
    }
    return $stack;
}

$string_ = $_GET['string_'];
$result = reverse_polish_notation($string_);
echo "$string_ = $result[0]";
?>
