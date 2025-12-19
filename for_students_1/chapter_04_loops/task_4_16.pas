// Шаблон для кода задачи табуляции через for
//##
//var (a, b, h) := ReadReal3;
//for var i := 0 to Trunc((b - a) / h) do
//begin
//  var x := a + i * h;
//  // тут находим y(x)
//end;
//
//// Или через цикл while
//var x := a;
//while x <= b + h / 2 do
//begin
//  // тут находим y(x)
//  x += h
//end;
//
//// с repeat практически то же самое
//var x := a;
//repeat
//  // тут находим y(x)
//  x += h;
//until x > b + h / 2;


// Составить таблицу значений функции y для x, изменяющегося в диапазоне от
// 0 до 10 с шагом 0.5
##
var (a, b, h) := (0.0, 10.0, 0.5);
for var i := 0 to Trunc((b - a)/ h) do
begin
  var x := a + h * i;
  var y := 3 * x * x + 2 * x - 4;
  Writeln(x:4:1, y:10:2)
end;

// Реализация на базе repeat:
//var (a, b, h) := (0.0, 10.0, 0.5);
//var x := a;
//repeat
//  var y := 3 * x * x + 2 * x - 4;
//  Writeln(x:4:1, y:10:2);
//until x > b + h / 2;
