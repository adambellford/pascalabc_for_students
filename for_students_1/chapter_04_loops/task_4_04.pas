// Среди целых чисел из интервала [a;b] выбрать те, которые кратны
// трем и оканчиваются цифрой 9. Найти сумму отобранных
// чисел и их среднее значение
##
var (a, b) := ReadInteger2('Введите границы интервала [a, b]:');
if a >= b then
begin
  Print('Неверные границы интервала');
  exit
end;
var (s, avg) := (0, 0.0);
var good_nums := 0;
for var i := a to b do
begin
  if (i mod 3 = 0) and (Abs(i) mod 10 = 9) then
  begin
    good_nums += 1;
    s += i;
  end;
end;
avg := s / good_nums;
Println('Сумма:', s);
Print('Среднее:', avg);