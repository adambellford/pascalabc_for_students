// Даны три отрезка прямой длиной a, b и c. Если из них можно составить
// треугольник, вычислить значение его углов с точностью до 0.1 градуса.
// Также вывести значение периметра треугольника и его площади.
begin
  var (a, b, c) := ReadReal3('Введите длины треугольника:');
  var first := (a + b) > c;
  var second := (b + a) > a;
  var third := (a + c) > b;
  if first and second and third then
  begin
    var P := a + b + c;
    var h_p := P / 2;
    var S := Sqrt(h_p * (h_p - a) * (h_p - b) * (h_p - c));
    var sinC := 2 * S / (a * b);
    var dA := RadToDeg(ArcSin(a * sinC / c));
    var dB := RadToDeg(ArcSin(b * sinC / c));
    var dC := 180 - da - db;
    Writeln('Периметр: ', P);
    Writeln('Площадь: ', S);
    Write('Углы треугольника, град.: A = ', dA:0:1,
      ', B = ', dB:0:1, ', C = ', dC:0:1)
  end
  else
    Print('Построить треугольник нельзя');
end.