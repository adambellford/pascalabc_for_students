// В трехзначном числе переставить цифры в обратном порядке
##
var n: integer := ReadInteger('Введите трехзначное число:');
Print(n mod 10 * 100 + n div 10 mod 10 + n mod 100 div 100);
// var n := ReadInteger('Enter a three digit number:');
// var s := n div 100;
// var d := n mod 100 div 10;
// var e := n mod 10;
// Print(100 * e + 10 * d + s);