// Функция Аккермана
function Akk(n, m: integer): integer;
begin
  if n = 0 then
    Result := m + 1
  else if m = 0 then
    Result := Akk(n - 1, 1)
  else
    Result := Akk(n - 1, Akk(n, m - 1));
end;

begin
  Print(Akk(3, 4));
end.