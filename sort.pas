program main;



type
  TCountArray = array of Integer;


procedure CountingSort(var A: array of Integer; N, M: Integer);
var
  Count: TCountArray;
  i, j, idx: Integer;
begin
  SetLength(Count, M);
  for i := 0 to M - 1 do
    Count[i] := 0;
  for i := 0 to N - 1 do
    Inc(Count[A[i]]);
  idx := 0;
  for i := 0 to M - 1 do
  begin
    for j := 1 to Count[i] do
    begin
      A[idx] := i;
      Inc(idx);
    end;
  end;
end;
var
  N, M: Integer; 
  Arr: array of Integer;
  t1,t2: Real;
  i:Integer;
begin
  Milliseconds;
  readln(N);
  readln(M);
  SetLength(Arr, N);
  Randomize;
  for i := 0 to N - 1 do
    Arr[i] := Random(M);
  writeln('Исходный массив:');
  
  for i := 0 to N - 1 do
    Write(Arr[i], ' ');
  writeln;
  t1 := Milliseconds;
  CountingSort(Arr, N, M);
  t2 := Milliseconds;
  writeln('Отсортированный массив:');
  for i := 0 to N - 1 do
    Write(Arr[i], ' ');
  
  writeln;
  writeln('Время: ', t2-t1);
  
end.
