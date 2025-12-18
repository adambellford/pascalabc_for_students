// Найти сумму кубов всех целых чисел от 30 до 120
##
var sum := 0;
for var i := 30 to 120 do
begin
  sum += i * i * i;
end;
Print('Сумма: ', sum);