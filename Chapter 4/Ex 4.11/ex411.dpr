program ex411;
{
Write a program that reads in an exam mark and displays the relevant grade.
The grade boundaries are:

0 to 40 marks grade U
41 to 50 marks grade E
51 to 60 marks grade D
61 to 70 marks grade C
71 to 80 marks grade B
81 to 100 marks grade A
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  exam : Integer;

begin
  Write('Please enter your exam marks: ');
  Readln(exam);


  case exam of
    0..40 : writeln('You got grade U. so sad ;(');
    41..50 : writeln('grade E');
    51..60 : writeln ('grade D');
    61.. 70 : writeln ('grade C');
    71..80 : writeln ('grade B');
    81..100 : writeln ('Hey Genius, you got... grade A');
  else
    writeln('not in range, try again!');
  end; {case}

  Readln;
  
end.
