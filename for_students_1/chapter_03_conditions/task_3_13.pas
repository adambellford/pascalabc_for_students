// Найти корни квадратного уравнения
##
var (a, b, c) := ReadReal3('Введите коэффициенты a, b, c:');
var D := b * b - 4 * a * c;

if D > 0 then // два разных корня
begin
  D := Sqrt(D);
  var x1 := (-b - D) / (2 * a);
  var x2 := (-b + D) / (2 * a);
  Write('x1 = ', x1:0:5, ', x2 = ', x2:0:5)
end
else if D = 0 then
  Write('x = ', -b / (2 * a))
else
  Print('Корней нет')