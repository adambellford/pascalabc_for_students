// Кусочно-заданные функции
##
var x := ReadReal('x =');
var y: real;
if x < 0 then
  y := 2 * x - 3.1
else if x > 2 then
  y := 2
else
  y := 0;
// Альтернативная запись c тернарным оператором:
// y := x < 0 ? 2 * x - 3.1 : x > 2 ? 2 : 0;
Print('y =', y)