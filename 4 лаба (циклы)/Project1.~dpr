program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
a: smallint;
i,n,sum:smallint;
mas: array of smallint;

begin
readln(n);
setlength(mas,n);
for i:=0 to n-1 do
  begin
    readln(a);
    mas[i]:=a;
  end;
  n:=n-1;
  
  asm
@for_start:
  lea bx, mas;	//берём в bx адрес первого элемента
  mov cx, n;    //счетчик цикла
  xor ax, ax;
@begin:
    add ax, [bx];
    inc bx;    //переходим к следующему элементу
    loop @begin;
@for_finish:
    mov sum,ax;
  end;

  writeln('sum = ', sum);

  readln;
  readln;
end.


