// Найти кол-во нечетных делителей заданного числа
##
var counter := 0;
var n := ReadInteger('Введите число:');
for var i := 1 to n div 2 do
begin
  if (n mod i = 0) and (i mod 2 <> 0) then
    counter += 1;
end;
Print('Кол-во нечетных делителей:', counter)
//
//var n := ReadInteger('n=');
//var k := 0;
//for var i := 1 to Round(Sqrt(n)) do
//begin
//  if n mod i = 0 then
//  begin
//    k += i.isOdd ? 1 : 0;
//    var t := n div i;
//    k += t.isOdd and (t <> i) ? 1 : 0;
//  end;
//end;