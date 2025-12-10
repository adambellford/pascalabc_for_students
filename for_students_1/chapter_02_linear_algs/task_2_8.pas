// Вычислить значение функции ------ при любом значении x, заданном вводом с клавиатуры
##
var a_coef := 4.5;
var b_coef := -5;
var c_coef := 6;

var x := ReadReal('Введите x:');

var y := a_coef * x * x + b_coef * x + c_coef;
Print('y =', y);