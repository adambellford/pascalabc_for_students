// Дано натуральное число. Верно ли, что сумма его четных цифр
// больше, чем сумма нечетных?
##
var (sEven, sOdd) := (0, 0);
var n := Abs(ReadInteger('Введите натуральное число:'));
while n > 0 do
begin
  var d := n mod 10;
  n := n div 10;
  if d.IsEven then
    sEven += d
  else
    sOdd += d
end;

if sEven > sOdd then
  Print('Верно, сумма четных больше')
else
  Print('Неверно, сумма четных не больше')