program ex61;
{
Write a program that asks the user to type in a number with decimal places.
The program should then display the rounded and the truncated number.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var
  Number, rounded, truncated : Real;

begin
Writeln('This program converts a number with decimal places, into rounded/truncated number');
Write('Please enter a decimal number: ');
Readln(Number);

rounded := Round (Number);
truncated := Trunc (Number);

Writeln('Rounded: ', rounded:5:2);
Writeln('Truncated: ', truncated:5:2);
Readln;

  { TODO -oUser -cConsole Main : Insert code here }
end.
