##
// Треугольник задан координатами своих вершин. Гарантируется, что треугольник
// существует. Найти его периметр, площадь, а также радиусы вписанной и описанной
// окружности. Вывод с точностью 4 знака после запятой.

var (xA, yA) := ReadReal2('Введите координаты первой точки:');
var (xB, yB) := ReadReal2('... координаты второй точки:');
var (xC, yC) := ReadReal2('... координаты третьей точки:');

// Нахождение периметра
var a_length := Sqrt((xB - xA)**2 + (yB - yA)**2);
var b_length := Sqrt((xC - xB)**2 + (yC - yB)**2);
var c_length := Sqrt((xA - xC)**2 + (yA - yC)**2);
var per := a_length + b_length + c_length;

// Площадь
var (xV, yV);
var base_length;
var height;
if (a_length >= b_length and a_length >= c_length) then
begin
  base_length = a_length;
  xV, yV = xC, yC;
end;
else if (b_length >= a_length and b_length >= c_length) then
begin
  base_length = b_length;
  xV, yV = xA, yA;
end
else
begin
  base_length = c_length;
  xV, yV = xB, yB;
end;
var sq := (base_length * ) / 2;