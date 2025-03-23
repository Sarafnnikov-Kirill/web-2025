<?php

function leap_year(int $year): string {
    if (($year % 4 == 0 && $year % 100 != 0) || $year % 400 == 0) {
        return 'YES';
    } else {
        return 'NO';
    }
}

$year = intval($_GET['year']);
$result = leap_year($year);
echo "<p>$result</p>";
?>
