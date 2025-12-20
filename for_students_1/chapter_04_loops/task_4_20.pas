// Найти НОК трех чисел a, b и c, введенных с клавиатуры
##
var (a, b, c) := ReadInteger3;
var (a1, b1, c1) := (a, b, c);
while b <> 0 do
begin
  (a, b) := (b, a mod b);
end;
b := (a1 * b1) / real(a);
b1 := b;
while c <> 0 do
begin
  (b, c) := (c, b mod c);
end;
var nok := (b1 * c1) / b;
Print(nok)