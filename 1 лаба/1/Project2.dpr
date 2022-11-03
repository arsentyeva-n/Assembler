program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
a:byte;

begin
asm
mov AL,$AB
mov a,AL
end;

writeln(a);
readln;
end.
