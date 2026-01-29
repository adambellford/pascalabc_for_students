function Fact(n: integer): real := n = 1 ? 1.0 : n * Fact(n - 1);
// Alternative:
// function Fact(n: integer): real := n <= 1 then 1.0 else n * Fact(n - 1);

begin
  Print(Fact(5));
end.