// Получить сто первых простых чисел
begin
  var j := 2;
  var IsPrime := False;
  Print(j);
  var counter := 0;
  j += 1;
  repeat
    // Println('Testing j: ', j);
    IsPrime := True;
    for var i := 2 to (j - 1) do
    begin
      // Println(j, i);
      if j mod i = 0 then
      begin
        IsPrime := False;
        break
      end;
    end;
    if IsPrime then
    begin
      Print(j);
      counter += 1;
    end;
    j += 2;
  until counter > 99;
end.