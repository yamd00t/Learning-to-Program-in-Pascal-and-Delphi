program ex31;
{
Write a program that will ask the user for their first name. The program should then
concatenate the name with a message, such as 'Hello Fred. How are you?' and output
this string to the user.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  name : String;

begin
  Write('Your first name? ');
  Readln(name);
  Writeln('Hello ', name, '. How are you?');
  Readln;
  { TODO -oUser -cConsole Main : Insert code here }
end.
