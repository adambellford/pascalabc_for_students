// Дано натуральное число. Верно ли, что в нем заданная цифра
// встречается более одного раза?
##
var n := Abs(ReadInteger('Введите натуральное число:'));
var k := ReadInteger('Заданная цифра:');

var counter := 0;

while n > 0 do
begin
  var d := n mod 10;
  
  if d = k then
    counter += 1;
  if counter >= 2 then
    break;
  
  n := n div 10;
end;

if counter > 1 then
  Print('Верно')
else
  Print('Неверно')