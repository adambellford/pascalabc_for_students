##
// получение исходных данных
var n: integer;
n := ReadInteger('Расстояние в километрах:');

// обработка данных
var n_in_meters: integer := n * 1000;
var n_in_cms: integer := n_in_meters * 100;

// вывод результатов
Println('Расстояние в метрах:', n_in_meters);
Print('Расстояние в сантиметрах:', n_in_cms);