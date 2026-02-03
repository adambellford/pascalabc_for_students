function length(x1, y1, x2, y2: integer) := Sqrt(Sqr(x1 - x2) + Sqr(y1 - y2));

function perimeter(x1, y1, x2, y2, x3, y3: integer) := length(x1, y1, x2, y2) +
  length(x2, y2, x3, y3) + length(x3, y3, x1, y1);

function Triangle: real;
begin
  var x1, y1, x2, y2, x3, y3: integer;
  (x1, y1) := Random2(-500, 500);
  (x2, y2) := Random2(-500, 500);
  (x3, y3) := Random2(-500, 500);
  
  Result := perimeter(x1, y1, x2, y2, x3, y3);
  Writeln('A(', x1, ', ', y1, '), B(', x2, ', ', y2, ') C(', x3, ', ', y3, '), P = ', Result);
end;

begin
  var Pmax := 0.0;
  loop 10 do
  begin
    var Pt := Triangle;
    if Pt > Pmax then
      Pmax := Pt
  end;
  Print('Максимальный периметр', Pmax);
end.