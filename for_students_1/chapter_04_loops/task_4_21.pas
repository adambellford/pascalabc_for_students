// Даны две простые дроби a/b и c/d, где a, b, c, d – натуральные чис-
// ла. Представить их сумму несократимой простой дробью, либо
// целым числом.
begin
var (a, b, c, d) := ReadInteger4;
Write(a, '/', b, ' + ', c, '/', d, ' = ');
// Находим НОД между b и d
var (bt, dt) := b > d ? (b, d) : (d, b);
while dt <> 0 do
  (bt, dt) := (dt, bt mod dt);
// Находим НОК между b и d
var bd_nok := Round((b * d) / bt);

// Узнаем на сколько домнажать каждую дробь
var ab_mul := Round(bd_nok / b);
var cd_mul := Round(bd_nok / d);
// Домнажаем
(a, b) := (a * ab_mul, b * ab_mul);
(c, d) := (c * cd_mul, d * cd_mul);

// Вычисляем числитель суммы дробей
var chis := a + c;
// Проверяем, что знаменатели равны
if b <> d then
begin
  Print('Ошибка');
  exit
end;

if chis mod d = 0 then
  Write(chis div d)
else
begin
  // Если число не целое, ищем НОД числителя и знаменателя
  var (x, y) := d > chis ? (d, chis) : (chis, d);
  while y <> 0 do
    (x, y) := (y, x mod y);
  // Если имеется НОД, отличный от единицы
  if x <> 1 then
    // Сокращаем числитель и знаменатель на НОД
    Write(chis div x, '/', d div x)
  else
    Write(chis, '/', d)
end;
end.