function Sqrt33(x: real): real;
begin
  Result := Sign(x) * Abs(x) ** (1/3);
end;

begin
  Println(Sqrt33(2.0));
  Println(Sqrt33(-8.0));
  Println(Sqrt33(4913));
end.