// Найти для функции минимальное значение на интервале изменения x от -4 до 5.
// Требуется точность по аргументу не ниже четырех знаков после запятой.
##
var (a, b, h) := (-4.0, 5.0, 0.0001);
var yMin := real.MaxValue;
var xMin := real.MaxValue;

for var i := 0 to Trunc((b - a) / h) do
begin
  var x := a + i * h;
  var y := 4.1 + x * (-5.1 + x * (1 + x * (-4.1 + x)));
  if y <= yMin then
  begin
    yMin := y;
    xMin := x;
  end;
end;

Write('(', xMin:0:4, ', ', yMin:6:4, ')')