// Точки и координаты. Найти две макс. удаленные от центра и одну макс. ближнюю
// к центру. Вывести их координаты.
begin
  // расстояние точек от центра
  var (maxD1, maxD2, minD) := (real.MinValue, real.MinValue, real.MaxValue);
  var maxX1, maxY1: real;
  var maxX2, maxY2: real;
  var minX, minY: real;
  
  var n := ReadInteger('Кол-во (>= 3) точек:');
  var counter := 0;
  loop n do
  begin
    counter += 1;
    Write(counter, '. ');
    var (x, y) := ReadReal2('(x, y) =');
    var L := Sqrt(x**2 + y**2);
    if L >= maxD1 then
    begin
      maxD2 := maxD1;
      maxD1 := L;
      (maxX2, maxY2) := (maxX1, maxY1);
      (maxX1, maxY1) := (x, y);
    end
    else if L >= maxD2 then
    begin
      maxD2 := L;
      (maxX2, maxY2) := (x, y);
    end;
    if L <= minD then
    begin
      minD := L;
      (minX, minY) := (x, y);
    end;
  end;
  
  Writeln('Самая удаленная точка (', maxX1,
  ', ', maxY1, ') на расстоянии: ', maxD1);
  Writeln('Вторая самая удаленная точка (', maxX2,
  ', ', maxY2, ') на расстоянии: ', maxD2);
  Write('Ближайшая точка (', minX,
  ', ', minY, ') на расстоянии: ', minD);
end.