program ex41;
{
Write a program that asks for two numbers from the user and then displays a suitable message
if the two numbers are the same.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Number1, Number2: Real;

begin
  Write('Please enter a number: ');
  Readln(Number1);
  Write('Please enter another number: ');
  Readln(Number2);

  if (Number1 = Number2)
    then Writeln('Number1 and Number2 are the same');
    else Writeln('Number1 and Number2 are NOT the same');
  Readln;
  { TODO -oUser -cConsole Main : Insert code here }
end.
