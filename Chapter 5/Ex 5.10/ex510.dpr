program ex510;
{
n factorial, usually written n!, is defined to be the product of all the integers in the
range 1 to n:

  n! = 1*2*3*4*... * n

Write a program that calculates n! for a given positive n.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  n, Counter, RunningTotal : Integer;

begin
  Writeln('This program calculates n! (n factorial) for a positive number of your choice: ');
  Writeln('Please enter a number of your choice: ');
  Readln(n);

  RunningTotal := 1;
  for Counter := 1 to n do
  begin
    RunningTotal := RunningTotal * n;
    n := n - 1;
  end;
  Writeln('The n factorial is ', RunningTotal);
  Readln;

  { TODO -oUser -cConsole Main : Insert code here }
end.
