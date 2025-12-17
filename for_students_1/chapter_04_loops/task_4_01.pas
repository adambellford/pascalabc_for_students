// На вход подается кол-во точек в виде координат. 
// Найти две точки, максимально удаленные от центра и
// одну точку ближайшую к центру.
begin
  var n := ReadInteger('Введите кол-во точек (>= 3):');
  if n < 3 then
  begin
    Print('Введено неверное значение');
    exit;
  end;
  
  begin
    var (maxL1, maxL2, minL) := (-1.0, -1.0, real.MaxValue);
    var mxX1, mxY1, mxX2, mxY2, mnX, mnY: real;
    loop n do
    begin
      var (x, y) := ReadReal2('Введите координаты точки (x, y):');
      var L2 := x * x + y * y;
      if L2 >= maxL1 then
      begin
        (maxL2, mxX2, mxY2) := (maxL1, mxX1, mxY2);
        (maxL1, mxX1, mxY2) := (L2, x, y);
      end
      else if L2 >= maxL2 then
        (maxL2, mxX2, mxY2) := (L2, x, y);
      if L2 <= minL then
        (minL, mnX, mnY) := (L2, x, y);
    end;
    
    Writeln('Максимумы:');
  Writeln(Sqrt(maxL1), '(', mxX1, ', ', mxY1, ')');
  Writeln(Sqrt(maxL2), '(', mxX2, ', ', mxY2, ')');
  Writeln('Минимум:');
  Writeln(Sqrt(minL), '(', mnX, ', ', mnY, ')')
  end;
end.