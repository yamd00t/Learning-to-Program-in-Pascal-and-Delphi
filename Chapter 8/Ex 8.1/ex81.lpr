program ex81;
{
Write and test a procedure Swap, which takes two integers as parameters and returns
the first value passed to the procedure as the second value returned by the procedure
and vice versa.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  one, two : Integer;

procedure Swap(var intOne, intTwo : Integer);
begin
  intOne := intOne + intTwo;
  intTwo := intOne - intTwo;
  intOne := intOne - intTwo;
  Writeln('After Swap: ');
  Writeln('Integer One is: ', intOne);
  Writeln('Integer Two is: ', intTwo);
end; { end of procedure }

begin
  Writeln('This program takes two integers as parameters and returns the first value passed to the procedure as the second value returned by the procedure and vice versa.');
  Writeln;
  Write('Enter Integer One: ');
  Readln(one);
  Write('Enter Integer Two: ');
  Readln(two);
  Writeln;
  Writeln;
  Swap(one, two); (* Procedure call *)
  Readln;
end.

