// Вычислить сумму
##
var sum := 1.0;
// var znak := 1;
for var i := 2 to 25 do
  sum += ((i + 1) mod 2 = 0 ? 1 : -1) * (1 / i); // * znak
  // znak := -znak;
Print('Сумма:', sum)