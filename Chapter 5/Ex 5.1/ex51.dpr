program ex51;
{
Make each of the four examples on the previous page into a program to test what it does.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  NoOfStudents, Count, Counter, Marks, RunningTotal : Integer;
  AverageMarks : Real;
  Letter : Char;

begin
  for Count := 1 to 10 do Writeln ('This is line ', Count);
  for Counter := 10 downto 0 do Writeln (Counter);
  Writeln('Available grades...');
  for Letter := 'A' to 'U' do Writeln (Letter);


  Write('Please enter the number of students: ');
  Readln(NoOfStudents);
  Writeln('Please enter the marks of the students ');
  for Counter := 1 to NoOfStudents do
  begin
    Readln (Marks);
    RunningTotal := RunningTotal + Marks;
  end;
  AverageMarks := RunningTotal / NoOfStudents;

  Writeln('The average marks is: ', AverageMarks:5:2);
  Readln;

  { TODO -oUser -cConsole Main : Insert code here }
end.
