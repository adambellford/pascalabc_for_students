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

// Нормальная реализация:
//begin
//  var (n, k) := (1, 0);
//  repeat
//    var r: boolean;   // False, если число составное
//    if n <= 1 then
//      r := False;
//    else if n = 2 then
//      r := True;
//    else if n mod 2 = 0 then // Если число кратно двум
//      r := False
//    else
//    begin
//      r := True;
//      var j := 3;
//      while (j * j <= n) and r do
//        if n mod j = 0 then
//          r := False
//        else
//          j += 2
//    end;
//    if r then
//    begin
//      k += 1;
//      Print(n)
//    end;
//    n += 1;
//  until k > 100;  // требуется 100 простых чисел
//end.