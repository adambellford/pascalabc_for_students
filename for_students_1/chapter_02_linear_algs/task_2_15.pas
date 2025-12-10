// Даны шесть натуральных чисел. Найти отношение минимального из средних арифме-
// тических каждой пары к среднему геометрическому всех шести чисел.
##
var a, b, c, d, e, f: integer;
Print('Введите шесть натуральных чисел:');
Read(a, b, c, d, e, f);

var geom_ave := (real(a) * b * c * d * e * f)**(1/6);
var ab_ave := (a + b) / 2;
var cd_ave := (c + d) / 2;
var ef_ave := (e + f) / 2;
var min_arif := Min(ab_ave, cd_ave, ef_ave);
Print('Результат:', min_arif / geom_ave);
