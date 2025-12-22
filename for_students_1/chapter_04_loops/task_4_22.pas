// Является ли заданное натуральное число простым?
##
var n := ReadInteger;
var (j, isPrime) := (2, True);
if n mod j <> 0 then
begin
  j := 3;
  while j * j <= n do
  begin
    if n mod j = 0 then
    begin
      isPrime := False;
      break
    end;
    j += 2;
  end;
end;

Print(isPrime and (n > 1) ? 'Простое' : 'Составное')