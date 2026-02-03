// Реализовать и протестировать процедуру Triangle...
function TrianglePossible(a, b, c: real) := 
  (a + b > c) and (a + c > b) and (c + b > a);
  
function Geron(a, b, c: real): real;
begin
  var p := (a + b + c) / 2;
  Result := Sqrt(p * (p - a) * (p - b) * (p - c));
end;

procedure Triangle;
begin
  var (a, b, c) := ReadReal3('Введите три числа: ');
  Print('Площадь треугольника равна: ');
  if TrianglePossible(a, b, c) then
    Print(Geron(a, b, c))
  else
    Print(0);
end;

begin
  Triangle
end.