program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
i,n,sum,a:integer;
mas: array[1..100] of integer;

begin
readln(n);
//setlength(mas,n);
for i:=1 to n do
  begin
    readln(a);
    mas[i]:=a;
  end;

  sum:=0;
  {for i:=0 to n do
  begin
    write(mas[i],' ');
  end;         }

  asm
@_start:
  mov ebx,0
  //lea esi, [mas + 2 * ebx]
  mov edx,0
  mov eax,0
  mov ecx,n

@for_start:
    lea esi, [mas + ebx * 2]    // ����� �����
    mov eax, [esi]            // ��������� ������� ������� i � eax
    push ecx                  //������� ecx � ����, ����� �� ��������
    mov ecx,5                 // � ecx ������� 5
    div ecx                   //����� eax ��  5
    pop ecx                    //��������� �� ����� ecx ������
    mov eax, [esi]             //eax ����� ����� �������� �������� �������
    cmp edx, 0                 //��������� �������
    jne @end_if                //���� ����� �������� �� 5 �� ��������� �� ������� �� �� 7
      push ecx
      mov ecx,7
      div ecx
      pop ecx
      mov eax, [esi]
      cmp edx, 0
      je @end_else
        add sum,eax         //sum += mas[i]

    @end_if:
    @end_else:

    inc ebx    //��������� � ���������� ��������
    loop @for_start

  end;

  writeln('sum = ', sum);

  readln;
end.


