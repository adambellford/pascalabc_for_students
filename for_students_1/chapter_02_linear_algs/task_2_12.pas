##
// Треугольник задан координатами своих вершин. Гарантируется, что треугольник
// существует. Найти его периметр, площадь, а также радиусы вписанной и описанной
// окружности. Вывод с точностью 4 знака после запятой.

var (xA, yA) := ReadReal2('Введите координаты первой точки:');
var (xB, yB) := ReadReal2('... координаты второй точки:');
var (xC, yC) := ReadReal2('... координаты третьей точки:');

// Нахождение периметра
var a_length := Sqrt((xC - xB)**2 + (yC - yB)**2);
var b_length := Sqrt((xC - xA)**2 + (yC - yA)**2);
var c_length := Sqrt((xB - xA)**2 + (yB - yA)**2);
var per := a_length + b_length + c_length;

// ... площади
var half_per := per / 2;
var s := Sqrt(per * (per - a_length) * (per - b_length) * (per - c_length));

// ... окружности
var r_inner := s / half_per;
var r_outer := (a_length * b_length * c_length) / (4 * s);

Println('Периметр:', per, 'площадь:', s);
Println('Радиус вписанной окружности:', r_inner);
Print('Радиус описанной окружности:', r_outer);