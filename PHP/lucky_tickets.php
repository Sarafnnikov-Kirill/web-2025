<?php

function lucky_tickets(string $tiket_start, string $tiket_end): array {
    $result = [];
    for ($i = (int)$tiket_start; $i <= (int)$tiket_end; $i++) {
        $i = strval($i);
        $sum_left = intval($i[0]) + intval($i[1]) + intval($i[2]);
        $sum_right = intval($i[3]) + intval($i[4]) + intval($i[5]);
        if ($sum_left == $sum_right) {
            $result[] = $i;
        }
    }
    return $result;
}

$tiket_start = $_GET['tiket_start'];
$tiket_end = $_GET['tiket_end'];
$result = lucky_tickets($tiket_start, $tiket_end);
for ($i = 0; $i < count($result); $i++) {
    echo $result[$i] . "<br>";
}

?>
