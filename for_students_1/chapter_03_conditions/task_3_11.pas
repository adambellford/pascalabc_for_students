// Дано целое пятизначное число. Если куб суммы его цифр кратен натуральному b,
// вывести True, иначе False.
##
var n := ReadInteger('Введите пятизначное число');
var b := ReadInteger('Введите число b');

var cube_of_sum := ((n div 10000) + 
            (n div 1000 mod 100) +
            (n div 100 mod 10) +
            (n mod 10))**3;
if (integer(cube_of_sum) mod b = 0) then
  Print('True')
else
  Print('False')