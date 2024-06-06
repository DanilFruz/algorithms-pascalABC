program SquareRootByColumnMethod;

var
  number, guess, error: real;

begin
  // Ввод числа, из которого нужно извлечь квадратный корень
  writeln('Введите число, из которого хотите извлечь квадратный корень:');
  readln(number);
  
  // Начальное предположение для корня
  guess := number / 2;
  
  // Итерационно уточняем значение корня методом Ньютона
  repeat
    guess := (guess + number / guess) / 2;
    error := abs(number - sqr(guess));
  until error < 0.0001; // задаем точность
  
  // Выводим результат
  writeln('Квадратный корень из ', number:0:2, ' равен ', guess:0:4);
end.
