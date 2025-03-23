<?php

function translator_digit(int $digit): string {
    switch ($digit) {
        case 0:
            return 'Ноль';
            break;
        case 1:
            return 'Один';
            break;
        case 2:
            return 'Два';
            break;
        case 3:
            return 'Три';
            break;
        case 4:
            return 'Четыре';
            break;
        case 5:
            return 'Пять';
            break;
        case 6:
            return 'Шесть';
            break;
        case 7:
            return 'Семь';
            break;
        case 8:
            return 'Восемь';
            break;
        case 9:
            return 'Девять';
            break;
    }
}

$digit = $_GET['digit'];
$result = translator_digit($digit);
echo "<p>$result</p>";
?>
