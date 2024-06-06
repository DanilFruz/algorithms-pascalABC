program lab5;
var k,n1,n2:real;
var i:integer;
begin
  readln(k);
  readln(n1);
  readln(n2);
  writeln();
  for i:=1 to 10 do begin
  k := k - trunc((k * n1/100)*((100-n2)/100));
 
  end;
  writeln(k);
end.
