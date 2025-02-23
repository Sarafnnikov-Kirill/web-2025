PROGRAM WorkWithQueryString(INPUT, OUTPUT);
{Реализуйте функцию на языке pascal для получения любого из параметров 
QUERY_STRING. Она должна принимать строку - название параметра и возвращать 
строку - значение параметра. Заголовок функции:}
USES
  GPC;
  
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  QueryString, Value: STRING;
  PosKey, PosEnd: INTEGER;
BEGIN
  {Получаем QUERY_STRING}
  QueryString := GetEnv('QUERY_STRING');
  Key := Key + '=';
  PosKey := Pos(Key, QueryString);
  IF PosKey > 0 
  THEN
    BEGIN
      {Обрезаем строку}
      QueryString := Copy(QueryString, PosKey + Length(Key) + 1, Length(QueryString));
      PosEnd := Pos('?', QueryString);{Ищем символ ? или конец строки}
      IF PosEnd > 0                   {Если найден символ ?, обрезаем строку до него}
      THEN
        Value := Copy(QueryString, 1, PosEnd - 1)
      ELSE
        Value := QueryString;         {Если ? не найден, берём всю строку}
      GetQueryStringParameter := Value
    END
  ELSE
    GetQueryStringParameter := ''     {Если параметр не найден, возвращаем пустую строку}
END;

BEGIN { WorkWithQueryString }
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'));
END. { WorkWithQueryString }

