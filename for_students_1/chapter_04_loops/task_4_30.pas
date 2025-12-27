// Найти все без исключения делители заданного числа и вывести их
// в порядке возрастания
##
var n := ReadInteger;
for var i := 1 to n div 2 do
begin
  if n mod i = 0 then
    Print(i);
end;