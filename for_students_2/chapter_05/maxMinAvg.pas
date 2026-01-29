procedure MyFirst(n: integer; var mn, mx: integer; var m: real);
begin
  (mn, mx) := (100, -100);
  var s := 0;
  loop n do
  begin
    var k := Random(-99, 99);
    s += k;
    if k < mn then
      mn := k
    else if k > mx then
      mx := k
  end;
  m := s / n;
end;

begin
  var Max, Min: integer;
  var Avg: real;
  MyFirst(10, Min, Max, Avg);   // вызов процедуры
  WriteLn('min = ', Min, ' max = ', Max, ' avg = ', Avg);
  
end.