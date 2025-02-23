PROGRAM WorkWithQueryString(INPUT, OUTPUT);
{���������� ������� �� ����� pascal ��� ��������� ������ �� ���������� 
QUERY_STRING. ��� ������ ��������� ������ - �������� ��������� � ���������� 
������ - �������� ���������. ��������� �������:}
USES
  GPC;
  
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  QueryString, Value: STRING;
  PosKey, PosEnd: INTEGER;
BEGIN
  {�������� QUERY_STRING}
  QueryString := GetEnv('QUERY_STRING');
  Key := Key + '=';
  PosKey := Pos(Key, QueryString);
  IF PosKey > 0 
  THEN
    BEGIN
      {�������� ������}
      QueryString := Copy(QueryString, PosKey + Length(Key) + 1, Length(QueryString));
      PosEnd := Pos('?', QueryString);{���� ������ ? ��� ����� ������}
      IF PosEnd > 0                   {���� ������ ������ ?, �������� ������ �� ����}
      THEN
        Value := Copy(QueryString, 1, PosEnd - 1)
      ELSE
        Value := QueryString;         {���� ? �� ������, ���� ��� ������}
      GetQueryStringParameter := Value
    END
  ELSE
    GetQueryStringParameter := ''     {���� �������� �� ������, ���������� ������ ������}
END;

BEGIN { WorkWithQueryString }
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'));
END. { WorkWithQueryString }

