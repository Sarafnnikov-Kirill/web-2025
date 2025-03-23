<?php

function zodiac_sign(string $date_): string {
    $parts = explode('.', $date_);
    $day = (int)$parts[0];
    $month = (int)$parts[1];

//    $firstDot = strpos($date_, '.');
//    $secondDot = strpos($date_, '.', $firstDot + 1);
//    $day = (int)substr($date_, 0, $firstDot);
//    $month = (int)substr($date_, $firstDot + 1, $secondDot - $firstDot - 1);
//    $year = (int)substr($date_, $secondDot + 1);

    switch ($month) {
        case 1:  // Январь
            return ($day <= 20) ? "Козерог" : "Водолей";
            break;
        case 2:  // Февраль
            return ($day <= 18) ? "Водолей" : "Рыбы";
            break;
        case 3:  // Март
            return ($day <= 20) ? "Рыбы" : "Овен";
            break;
        case 4:  // Апрель
            return ($day <= 20) ? "Овен" : "Телец";
            break;
        case 5:  // Май
            return ($day <= 21) ? "Телец" : "Близнецы";
            break;
        case 6:  // Июнь
            return ($day <= 21) ? "Близнецы" : "Рак";
            break;
        case 7:  // Июль
            return ($day <= 22) ? "Рак" : "Лев";
            break;
        case 8:  // Август
            return ($day <= 23) ? "Лев" : "Дева";
            break;
        case 9:  // Сентябрь
            return ($day <= 23) ? "Дева" : "Весы";
            break;
        case 10: // Октябрь
            return ($day <= 23) ? "Весы" : "Скорпион";
            break;
        case 11: // Ноябрь
            return ($day <= 22) ? "Скорпион" : "Стрелец";
            break;
        case 12: // Декабрь
            return ($day <= 21) ? "Стрелец" : "Козерог";
            break;
        default:
            die("Ошибка: Неверный месяц.");
    }
}

$date_ = $_GET['date_'];
$zodiac_sign = zodiac_sign($date_);
echo "Знак зодиака: $zodiac_sign";
?>
