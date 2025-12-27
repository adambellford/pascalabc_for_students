// Найти все простые делители заданного числа
##
var n := ReadInteger('n =');

for var j := 2 to Round(Sqrt(n)) do
begin
  while n mod j = 0 do
  begin
    Write(j, ' ');
    n := n div j
  end;
end;