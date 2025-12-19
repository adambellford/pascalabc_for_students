// Составить таблицу значений функции F(x, y) для x, меняющегося 
// от -2pi до 3pi с шагом pi/6 и y, меняющегося от -1.2 до 5.9
// c шагом 0.4
##
var (a, b, h) := (-2 * Pi, 3 * Pi, Pi / 6);
var (c, d, g) := (-1.2, 5.9, 0.4);

for var i := 0 to Trunc((b - a) / h) do
begin
  var x := a + h * i;
  for var j := 0 to Trunc((d - c) / g) do
  begin
    var y := c + g * j;
    
    var dividend := 1.4 * Exp(-1.6 * y) * Sqr(Cos((Pi * x) / 2));
    var p := x - 1.185;
    var divisor := 1 + 0.17 * Sign(p) * Abs(p)**(1/3);
    var F := dividend / divisor;
    Println(y, x, p);
  end;
end;