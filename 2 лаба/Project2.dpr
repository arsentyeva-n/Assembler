program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var n: word;
    a,b: byte;
begin
readln(n);
  //высчитывает сколько сотней в числе
  asm
    MOV AX,n;
    MOV cl, 100;
    DIV cl;
    MOV a,al;
    //MOV b,ah;
  end;

  writeln('Hundreds: ', a);

  readln;
end.
