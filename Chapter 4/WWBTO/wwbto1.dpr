program wwbto1;
{
What will be the output of the following piece of program code?
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Number : Integer;

begin
Number := 15;
if Number > 10
  then
    begin
      Writeln('You are a winner');
      Writeln('Please collect your prize');
    end
  else
    begin
      Writeln('Better luck next time');
    end;
Readln;
  { TODO -oUser -cConsole Main : Insert code here }
end.
