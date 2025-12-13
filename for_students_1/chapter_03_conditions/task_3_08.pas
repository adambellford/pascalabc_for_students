// Вычислить значение кусочно-заданной функции
##
var x := ReadReal('x =');
Print('y =',
  if x <= -12 then
    -2 * x - 23
  else if x in -12..-6 then
    Sqrt(36 - Sqr((x + 6))) + 1
  else if x in -6..3 then
    -Sqrt(81 - Sqr((x - 3))) + 7
  else if x in 3..6 then
    5 * x / 3 - 7
  else
    3)
