PROGRAM SarahRevere (INPUT, OUTPUT);
USES dos;
VAR
  Env: STRING;
BEGIN {SarahRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Env := GetEnv('QUERY_STRING');
  IF Env = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Env = 'lanterns=2'
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      WRITELN('Sara didnt say.')
END. {SarahRevere}

