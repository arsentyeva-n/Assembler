program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
x, y, z, sum, mult, max: integer;

begin
readln(x,y,z);
  asm
  // �������� x + y + z
    mov EAX,x;  // ������� ����� � �������
    mov EDX,y;
    mov EBX,z;
    add EAX,EDX;  // EAX = EAX + EDX
    add EBX,EAX;
    mov sum,EBX;  //sum = EBX
   // ��������� x * y * z
    mov EAX,x;
    mov EDX,y;
    imul EDX;       //EAX = EDX * EAX
    mov EDX,z;      //EDX = z
    imul EDX;
    mov mult,EAX;
    // ��������� sum>mult?
    mov ECX, mult;
      cmp EAX,EBX;  //EAX = mult, EBX = sum
      jg @end_if;   // if EAX > EBX then ECX = mult (������� �� ���������)

      mov ECX, sum;  //����� ECX = sum
      @end_if:
    mov max, ECX;
  end;

  writeln('sum = ', sum);
  writeln('mult = ', mult);
  writeln('max = ', max);

  readln;
end.


