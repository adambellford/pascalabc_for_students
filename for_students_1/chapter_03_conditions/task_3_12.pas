// Написать программу для решения уравнения ax + b = 0
##
var (a, b) := ReadReal2('Введите a и b:');
if a = 0 then
  if b = 0 then
    Print('Корней множество')
  else
    Print('Корней не имеет')
else
  Print('x =', -b / a)
 