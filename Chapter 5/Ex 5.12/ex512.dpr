program ex512;
{
Write a program that asks the user for a number between 10 and 20 inclusive and will
evaluate, that is test, the input. It should repeatedly ask the user for this number until
the input is within the valid range.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  number, Count : Integer;

begin
  Writeln('Please enter a number between 10 and 20 inclusive :');
  repeat write('ghusaad: ');
    readln(number);
    Count := Count + 1;
  until (number >= 10) and (number <= 20);

  Writeln('barabar ghusaadyo');

  Readln;
  { TODO -oUser -cConsole Main : Insert code here }
end.
