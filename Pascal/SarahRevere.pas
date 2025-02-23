PROGRAM SarahRevere(INPUT, OUTPUT);
{������ ��������� � ��� ��� ���� ��������, � ����������� 
�� ����, ������ �� ����� ����������� 'land' ��� 'sea'.}
USES
  GPC;

VAR
  W1, W2, W3, W4, Looking: CHAR;
  QueryString: STRING;
  I: INTEGER;
  
BEGIN { SarahRevere }
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryString := GetEnv('QUERY_STRING');
  {IF QueryString = '' THEN
  BEGIN
    WRITELN('No query string provided.');
    HALT;
  END;  }
  {������������� W1,W2,W3,W4,Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  I := 1;
  WHILE (I <= LENGTH(QueryString)) AND (Looking = 'Y')
  DO
    BEGIN
      W1 := W2;
      W2 := W3;
      W3 := W4;
      W4 := QueryString[i];
      {�������� ���� ��� 'land'}
      IF (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd')
      THEN {'land' �������}
        Looking := 'L';
      {�������� ���� ��� 'sea'}
      IF (W2 = 's') AND (W3 = 'e') AND (W4 = 'a')
      THEN {'sea' �������}
        Looking := 'S';
      I := I + 1
    END;
  {������� ��������� Sarah}
  IF Looking = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say');
  WRITELN
END. { SarahRevere }

