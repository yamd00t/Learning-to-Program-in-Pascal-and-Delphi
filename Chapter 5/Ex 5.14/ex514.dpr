program ex514;
{
Write a program that asks a user for a number between 10 and 20 inclusive.
The program should give the user a message if the number input is outside this range
and ask for another number until the number input is within range.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  number, count : Integer;

begin
  Writeln('Type in a number between 10 and 20 inclusive');
  Readln(number);

  if (number >= 10) and (number <= 20)
    then
      begin
        Writeln('Hmm, very quick,... that is in range :)')
      end
    else
      begin
        while (number < 10) or (number > 20)
          do
            begin
              Writeln('Please enter a number that fits in the above range :(');
              Readln(number);
            end;
        Writeln('ok, that is in range, well done!');
      end;

  Readln;
  { TODO -oUser -cConsole Main : Insert code here }
end.
