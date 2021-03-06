program ex84;
{
Using procedures, write a program that asks the user to enter an odd number,
validates the number and then print an inverted pyramid of stars based on that
number. For example, entering the value 5 will produce;

    *****
     ***
      *
}

uses
  SysUtils, StrUtils;

var MaxNoOfStars, NoOfStars, NoOfSpaces : Integer;

procedure InitialiseNoOfSpacesAndStars;
begin
  repeat
    write('enter an odd number: ');
    Readln(MaxNoOfStars);
  until (MaxNoOfStars MOD 2 <> 0);
  NoOfSpaces := MaxNoOfStars MOD 2; // enough space to accommodate base
  NoOfStars := MaxNoOfStars;    // tip has odd number of stars
end;

procedure OutputLeadingSpaces;
var Count : Integer;
begin
  for Count := 1 to NoOfSpaces
    do Write (' ');  // no new line required
end;

procedure OutputLineOfStars;
var Count : Integer;
begin
  for Count := 1 to NoOfStars
    do Write ('*');
  Writeln;  // move to next line
end;

procedure AdjustNoOfSpacesAndStars;
begin
  NoOfSpaces := NoOfSpaces + 1;
  NoOfStars := NoOfStars - 2;
end;

// ***** Main Program Starts Here *****

begin
  InitialiseNoOfSpacesAndStars;
  repeat
    OutputLeadingSpaces;
    OutputLineOfStars;
    AdjustNoOfSpacesAndStars;
  until (NoOfStars = -1);  // base has just one star
  Readln;
end.