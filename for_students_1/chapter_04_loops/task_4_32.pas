// Найти все простые делители заданного числа
##
var n := ReadInteger('n =');
var i := 2;
while n mod 2 = 0 do
begin
  Write(2, ' ');
  n := n div 2;
end;

i := 3;
while i <= Round(Sqrt(n)) do
  if n mod i = 0 then
  begin
    Print(i);
    n := n div i
  end
  else
    i += 2;
if n > 1 then
  Print(n)