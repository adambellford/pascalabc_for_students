// Найти НОК трех чисел a, b и c, введенных с клавиатуры
##
var (a, b, c) := ReadInteger3;
while b <> 0 do
begin
  (a, b) := (b, a mod b);
end;
a := (a * b) / 