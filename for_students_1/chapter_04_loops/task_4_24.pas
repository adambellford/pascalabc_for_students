// Выдать указанную сумму минимальным количеством монет до-
// стоинства 50, 10, 5 и 1. Количество монет каждого достоинства
// не ограничивается.
begin
  var n := ReadInteger('Сумма монет, которую необходимо выдать:');
  var k := 0; //  кол-во монет, выданных
  var s := 0; //  выданно денег
  var (p, d, t, e) := (50, 10, 5, 1);
  var (cp, cd, ct, ce) := (0, 0, 0, 0);
  
  while (n <> 0) do
  begin
    if (n - p >= 0) then
    begin
      k += 1;
      s += p;
      n -= p;
      cp += 1;
    end
    else if (n - d >= 0) then
    begin
      k += 1;
      s += d;
      n -= d;
      cd += 1;
    end
    else if (n - t >= 0) then
    begin
      k += 1;
      s += t;
      n -= t;
      ct += 1;
    end
    else if (n - e >= 0) then
    begin
      k += 1;
      s += e;
      n -= e;
      ce += 1;
    end;
  end;
  
  Println('Сумма на входе:', n);
  Println('Выдано всего монет:', k);
  Println('Номиналом 50 -', cp, 'шт');
  Println('Номиналом 10 -', cd, 'шт');
  Println('Номиналом 5 -', ct, 'шт');
  Println('Номиналом 1 -', ce, 'шт');

end.