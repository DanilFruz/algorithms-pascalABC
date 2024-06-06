program main;

var
  N, i, j,t1,t2: Integer;
  Matrix: array of array of Real;
  MaxValue, MinValue: Real;

begin
  Milliseconds;
  writeln('Введите размер матрицы:');
  readln(N);
  SetLength(Matrix, N);
  Randomize;
  for i := 0 to N - 1 do
  begin
    SetLength(Matrix[i], N);
    for j := 0 to N - 1 do
      Matrix[i, j] := Random(101); 
  end;
  writeln('Исходная матрица:');
  for i := 0 to N - 1 do
  begin
    for j := 0 to N - 1 do
      write(Matrix[i, j], ' ');
    writeln;
  end;
  t1:= Milliseconds;
  
  for i := 0 to N - 1 do
   begin
  MaxValue := -1000000;
  MinValue := 10000000;
  begin
    for j := 0 to N-1 do
    begin
      if Matrix[i, j] > MaxValue then
        MaxValue := Matrix[i, j];
      if Matrix[i, j] < MinValue then
        MinValue := Matrix[i, j];
       
       end;
       
    end;
    for j:=0 to N-1 do
      Matrix[i, j] := Round(((Matrix[i, j] - MinValue) / (MaxValue - MinValue)),3);
    end;
      
    
 
  t2 := Milliseconds;
  
  // Вывод нормализованной матрицы
  writeln('Нормализованная матрица:');
  for i := 0 to N - 1 do
  begin
    for j := 0 to N - 1 do
      write(Matrix[i, j]:6:3);
    writeln;
  end;

end.
