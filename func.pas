Var n:integer;
      y:real;
function f8(n:integer):real;
var i:integer;
    p:real;
begin
p:=1;
for i:=1 to n do
if odd(i) then p:=p*(i+1)/i
else p:=p*i/(i+1);
f8:=p;
end;
function f9(n:integer):real;
var i:integer;
    s,s1:real;
begin
s1:=1;
s:=0;
for i:=1 to n do
 begin
  s1:=sin(s1);
  s:=s+s1;
 end;
f9:=s;
end;
function f10(n:integer):real;
var i,j:integer;
    p,s:real;
begin
p:=1;
s:=n;
for i:=1 to n do
 begin
   p:= p*(power((1+1/power(i,i)), n-i+1));
   
 end;
 
f10:=p;
end;
begin
  write('Введите n= ');
  readln(n);
  y:=(f8(n) + f9(n))/f10(n);
  writeln('f8= ',f8(n));
  writeln('f9= ',f9(n));
  writeln('f10= ',f10(n));
  writeln('y= ',y)
end.