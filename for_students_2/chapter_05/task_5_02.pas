// Вычислить и вывести с 7 знаками после запятой значение x, по формуле

function F(m, n: integer) := (m + Sin(n)) / (n + Sin(m));

begin
  Write(F(1, 4) + F(7, 5) + F(3, 2):0:7);
end.