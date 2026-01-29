// Вычислить и вывести с 12 знак. пос. запятой значение x, по формуле
function P(n: integer) := n + Sqrt(n);

function F(m, n: integer) := P(m) / P(n);

begin
  Write(F(5, 7) + F(12, 8) + F(31, 2):0:12);
end.