// Вычислить число Пи методом Монте-Карло
##
var k := 0;   // кол-во попаданий точек в круг
var n := ReadInteger('Кол-во точек:');
loop n do
begin
  var (x, y) := Random2;  // промежуток [0.0, 1.0)
  if x * x + y * y <= 1 then
    k += 1;
end;
Write(4 * k / n:0:4);