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
    lea esi, [mas + ebx * 2]    // берем адрес
    mov eax, [esi]            // добавляем элемент массива i в eax
    push ecx                  //заносим ecx в стек, чтобы не потерять
    mov ecx,5                 // в ecx заносим 5
    div ecx                   //делим eax на  5
    pop ecx                    //извлекаем из стека ecx старый
    mov eax, [esi]             //eax снова равно значению элемента массива
    cmp edx, 0                 //сраниваем остаток
    jne @end_if                //если число делиться на 5 то проверяем не делится ли на 7
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

    inc ebx    //переходим к следующему элементу
    loop @for_start

  end;

  writeln('sum = ', sum);

  readln;
end.


