// Найти и вывести значения 5!, 10!, 20! и 100!
##
loop 4 do
begin
  var n := ReadInteger('n = ');
  var p := 1.0;
  
  for var i := 1 to n do
    p *= i;
  Writeln(n, '! = ', p);
end;