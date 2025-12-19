// Найти наибольшее пятизначное число Фибоначчи.
##
var fib: integer;
var (a, b) := (1, 1);
repeat
  fib := a + b;
  (a, b) := (b, fib);
until fib > 99999;
Print(a);