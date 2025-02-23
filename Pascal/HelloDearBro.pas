PROGRAM HelloDearBro(INPUT, OUTPUT);
{программа, которая выводит приветствие 'Hello dear, <name>!'. 
Имя должно передаваться в параметре name QUERY_STRING, 
в случае когда параметра name нет, выводиться 'Hello Anonymous!'.}
USES
  GPC;

VAR
  QueryString, Name: STRING;
  PosName: INTEGER;
  
BEGIN { HelloDearBro }
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryString := GetEnv('QUERY_STRING');
  IF QueryString = '' 
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    BEGIN
      PosName := Pos('=', QueryString);
      IF PosName > 0
      THEN
        Name := Copy(QueryString, PosName + 1, Length(QueryString));
      IF Length(Name) > 0
      THEN
        WRITELN('Hello ', Name)
      ELSE
        WRITELN('Hello Anonymous!')
    END;
  WRITELN
END. { HelloDearBro }

