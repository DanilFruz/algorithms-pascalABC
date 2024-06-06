program lab2;
var x,c,d,v:real;
begin
  writeln('x');
  readln(x);
  d:= ln(2 + x * x)/ ln(3);
  v:= sin(abs(1-x)**(1/3))/cos(abs(1-x)**(1/3));
  c := (d + v) * (4-x);
  writeln(c);
end.
