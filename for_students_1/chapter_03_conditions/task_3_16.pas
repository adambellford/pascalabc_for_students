// Даны три отрезка прямой длиной a, b и c. Можно ли из них составить
// треугольник?
##
var (a, b, c) := ReadReal3('Введите длины сторон треугольника:');
var first := (a + b) > c;
var second := (b + c) > a;
var third := (c + a) > b;

if first and second and third then
  Print('Треугольник возможен')
else
  Print('Треугольник не построить')