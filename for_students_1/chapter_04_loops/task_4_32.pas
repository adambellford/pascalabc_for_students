// Найти все простые делители заданного числа
##
var n := ReadInteger('n =');
var iterations := 0;
var i := 2;
while n mod i = 0 do
begin
  iterations += 1;
  Write(i, ' ');
  n := n div i;
end;

var end_var := Trunc((Round(Sqrt(n) - 3) / 2));

for var j := 0 to end_var do
begin
  var t := 3 + j * 2; 
  while n mod t = 0 do
  begin
    iterations += 1;
    Write(t, ' ');
    n := n div t
  end;
end;
Println('Iterations:', iterations)