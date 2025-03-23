<?php

function factorial_n(int $n): float {
    if ($n == 1) {
        return $n;
    }
    return factorial_n($n - 1) * $n;
}

$n = $_GET['n'];
$result = factorial_n($n);
echo "<p>$result</p>";
?>