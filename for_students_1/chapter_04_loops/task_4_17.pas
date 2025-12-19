// Составить таблицу значений функции для x, изм. в диапазоне от -1 до 5.2 с
// шагом 1.2
##
var (a, b, h) := (-1.0, 5.2, 1.2);
for var i := 0 to Trunc((b - a) / h) do
begin
  var x := a + i * h;
  // var y := x <= 1 ? 2 : x <= 3 ? x ** (1 / 3) : Sqr(x - 5) + 1;
  var y: real;
  if x <= 1 then
    y := 2
  else if x <= 3 then
    y := x ** (1/3)
  else
    y := (x - 5) * (x - 5) + 1;
  Println(x:5:2, '=', y:0:4)
end;