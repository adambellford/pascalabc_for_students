// Найти сумму и произведение цифр четырехзначеного числа
##
var n := ReadInteger('Введите четырехзначное число');
var t := n div 1000;
var s := n div 100 mod 10;
var d := n div 10 mod 10;
var e := n mod 10;
var sum := t + s + d + e;
var p := t * s * d * e;
Print('Сумма:', sum, 'произведение:', p);