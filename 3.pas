program lab3;
var t1,t2,m1,m2,c1,c2:integer;
begin
  writeln('Время езды');
  readln(t1,t2);
  writeln('Время выхода');
  readln(m1,m2);
  c1:= t1+m1;
  c2:= t2 + m2;
  if c1 < c2 then begin
    writeln('выиграла катя, t1,m1');
  end
  else if c1 = c2 then begin
    writeln('Одинаково');
   end
  else
    writeln('выиграла Лена, t2,m2');
end.
