// Написать рекурсивную функцию нахождения цифрового корня натурального числа
function dRoot(n: int64): integer;
begin
  if (n > 9) then
  begin
    var s := 0;
    while n > 0 do
    begin
      s += n mod 10;
      n := n div 10;
    end;
    n := s;
  end;
  Result := n < 10 ? n : dRoot(n);
end;

begin
  Print(dRoot(1553457985643424));
end.

// Другой вариант:
//function SumOfDigits(n: int64): integer;
//begin
//  Result := 0;
//  while n > 0 do
//  begin
//    Result += n mod 10;
//    n := n div 10;
//  end;
//end;
//
//function dRoot(n: int64): integer;
//begin
//  if n > 9 then
//    n := SumOfDigits(n);
//  Result := if n < 10 then n else SumOfDigits(n);
//end;
//
//begin
//  Print(dRoot(1553457985643424));
//end.