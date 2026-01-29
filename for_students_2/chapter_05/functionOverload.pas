function Srect(a, b: integer) := a * b;
function Srect(a, b: real) := a * b;

begin
  var a := Srect(3, 7);
  var b := Srect(2.5, 5);
  Print(a, b);
end.