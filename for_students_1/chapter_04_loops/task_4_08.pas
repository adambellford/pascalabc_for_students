// Вычислить сумму
##
var (x, s, z) := (-2.08, 1.0, -1);
var x2 := x * x;
var p := x;   // первое значение числителя
for var k := 1 to 15 do
begin
  s += z * p / (2 * k - 1);
  z := -z;
  p *= x2;
end;
Print(s)