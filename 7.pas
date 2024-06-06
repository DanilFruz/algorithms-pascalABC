program Main;

var
  phrase, words: string;
  adjectivesCount, i: integer;

begin
  writeln('Введите фразу:');
  readln(phrase);
  phrase := phrase + ' ';
  adjectivesCount := 0;
  words := '';

  for i := 1 to length(phrase) do
  begin
    // Если текущий символ не пробел, добавляем его к текущему слову
    if phrase[i] <> ' ' then
      words := words + phrase[i]
    else
    begin
      if (((words[length(words) - 1] = 'ы') and (words[length(words)] = 'й')) or
         ((words[length(words) - 1] = 'а') and (words[length(words)] = 'я')) or
         ((words[length(words) - 1] = 'о') and (words[length(words)] = 'е'))) then
        adjectivesCount := adjectivesCount + 1;
      words := '';
    end;
  end;

  writeln(adjectivesCount);
end.
