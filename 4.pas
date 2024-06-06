program lab4;
var a:string;
begin
  writeln('День недели:');
  readln(a);
  case a of
    'Понедельник','Пн':writeln(1);
    'Вторник','Вт':writeln(2);
    'Среда','Ср':writeln(3);
    'Четверг','Чт':writeln(4);
    'Пятница','Пт':writeln(5);
    'Субота','Сб':writeln(6);
    'Воскресенье','Вс':writeln(7)
    else
      writeln('Ошибка');
    end;
    
end.