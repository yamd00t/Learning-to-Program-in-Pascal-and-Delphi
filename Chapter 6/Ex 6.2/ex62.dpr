program ex62;
{
Write a program that reads in a string and displays the number of characters in the string.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var
  Msg : String;
  noc : Integer;

begin
Writeln('This program reads in a string and displays the number of characters in the string');
Writeln('Please type in your string/message: ');
Writeln('');
Readln(Msg);
noc := Length (Msg);
Writeln('');
Writeln('Number of characters: ', noc);
Readln;
  { TODO -oUser -cConsole Main : Insert code here }
end.
