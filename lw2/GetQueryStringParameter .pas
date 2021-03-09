PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  QS: STRING;
  N, Long, LongKey: INTEGER;
BEGIN {GetQueryStringParameter}
  QS := GetEnv('QUERY_STRING');
  LongKey := length(Key)+1;
  Long := length(QS);
  N:=POS(Key, QS);
  IF N <> 0
  THEN
    BEGIN
      QS := Copy(QS, N+LongKey, Long-LongKey-N+1);
      N:=POS('&', QS);
      IF N <> 0
      THEN
        GetQueryStringParameter := Copy(QS, 1, N-1)
      ELSE
        GetQueryStringParameter := Copy(QS, 1, Long-LongKey-N+1)
    END
  ELSE
    GetQueryStringParameter := 'not found'
END; {GetQueryStringParameter}
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}

