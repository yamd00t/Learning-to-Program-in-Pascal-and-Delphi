program ex96;
{
Declare an array Student of record type TStudent as above.

Write a program to store 5 students' details. Enter 5 students' details and display their details
in tabulated format.
}
uses
  SysUtils;

type TStudent = record
  FirstName: String[15];
  Surname: String[15];
end; {of TStudent}

// declare an array Student of record type TStudent
// simply an array of records
var
  Student : array [1..500] of TStudent;
  Ptr : Integer;

begin
  Writeln('Enter 5 students'' details and I''ll display their details in tabulated format');

  for Ptr := 1 to 3
    do
      begin
        Writeln;
        Write('enter student ', Ptr, ' name: ');
        Readln(Student[Ptr].FirstName);
        Write('enter student ', Ptr, ' surname: ');
        Readln(Student[Ptr].Surname);
      end;

  Writeln;
  Writeln;
  Writeln;
  Writeln('First Name          Surname');
  for Ptr := 1 to 3
    do
      Writeln(Student[Ptr].FirstName, '                 ', Student[Ptr].Surname);

Readln;
end.


