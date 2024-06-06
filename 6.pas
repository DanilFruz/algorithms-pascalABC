program Main;

const
  size = 100;

type
  RecordInfo = record
    subject: string;
    teacher: string;
    attempts: integer;
  end;

var
  records: array [0..size] of RecordInfo;
  numRecords, i: integer;
  teacherIndex, easiestSubjectIndex: integer;

begin
  writeln('Введите количество зачетов:');
  readln(numRecords);
  
  for i := 0 to numRecords do
  begin
    writeln('Введите информацию о зачете ', i, ':');
    writeln('Название предмета:');
    readln(records[i].subject);
    writeln('Фамилия преподавателя:');
    readln(records[i].teacher);
    writeln('Количество заходов для получения зачета:');
    readln(records[i].attempts);
  end;

  techerIndex := 0;
  easiestSubjectIndex := 0;

  for i := 1 to numRecords do
  begin
    if records[i].attempts > records[teacherIndex].attempts then
      teacherIndex := i;
    if records[i].attempts < records[easiestSubjectIndex].attempts then
      easiestSubjectIndex := i;
  end;

  writeln('Самый свирепый преподаватель: ', records[mostSevereTeacherIndex].teacher);
  writeln('Предмет, за который зачет получен наиболее легко: ', records[easiestSubjectIndex].subject);

end.