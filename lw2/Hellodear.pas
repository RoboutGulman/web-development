PROGRAM Hellodear (INPUT, OUTPUT);
USES dos;
VAR
  QS: STRING;
  Key: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QS := GetEnv('QUERY_STRING');
  Key := POS('name=', QS);
  IF Key = 0
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    BEGIN
      QS := COPY(QS, Key + 5, 30);
      WRITELN('Hello dear, ', QS, '!')
    END
END.



