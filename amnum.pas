program Main;

const
  SIZE = 100;
  ALPHABET = 'чнатья';

type
  StringArray = array[1..SIZE] of string;

var
  words: StringArray;
  numWords, i, j: integer;
  temp, input: string;

function Chars(a, b: char): integer;
begin
  if a = b then
    Chars := 0
  else if Pos(a, ALPHABET) < Pos(b, ALPHABET) then
    Chars := -1
  else
    Chars := 1;
end;

procedure BubbleSort(var arr: StringArray; size: integer);
var
  i, j: integer;
  temp: string;
begin
  for i := 1 to size - 1 do
    for j := 1 to size - i do
      if Chars(arr[j][1], arr[j + 1][1]) > 0 then
      begin
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;
end;

begin
  writeln('Введите слова ');
  readln(input);

  numWords := 0;
  words[1] := '';

  for i := 1 to length(input) do
  begin
    if input[i] <> ' ' then
      words[numWords + 1] := words[numWords + 1] + input[i]
    else if (words[numWords + 1] <> '') then
    begin
      numWords := numWords + 1;
      words[numWords + 1] := '';
    end;
  end;
  
  if words[numWords + 1] <> '' then
    numWords := numWords + 1;

  BubbleSort(words, numWords);

  writeln('Отсортированные слова:');
  for i := 1 to numWords do
    write(words[i] + ' ');
end.
