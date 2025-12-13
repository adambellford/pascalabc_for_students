//
##
var n := ReadInteger('Введите четырехзначное число:');
var t, s, d, e: integer;
t := n div 1000;
s := n div 100 mod 10;
d := n div 10 mod 10;
e := n mod 10;
if (t = 2) or (t = 7) or
  (s = 2) or (s = 7) or
  (d = 2) or (d = 7) or
  (e = 2) or (e = 7) then
    Println('Двойка или семерка присутствует')
else
  Println('Двойки или семерки нет');
var b1 := (t = 1) or (s = 1) or (d = 1) or (e = 1);
var b2 := (t = 6) or (s = 6) or (d = 6) or (e = 6);
if b1 and b2 then
  Print('Единица и шестерка присутствуют');