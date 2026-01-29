function Fact(n: integer): real := n = 1 ? 1.0 : n * Fact(n - 1);

begin
  Print(Fact(5));
end.