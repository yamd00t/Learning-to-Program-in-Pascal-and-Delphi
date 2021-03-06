program ex85;
{
Using procedures, write a program that asks the user to enter an odd number,
validates the number, and then displays a diamond of stars based on that number.
For example, the value 7 would produce:

   *
  ***
 *****
*******
 *****
  ***
   *
}

uses
  SysUtils, StrUtils;

var MaxNoOfStars, NoOfStars, NoOfSpaces, NoOfRows : Integer;

procedure InitialiseNoOfSpacesAndStars;
begin
  write('How many stars should be at the center of the diamond? ');
  Readln (MaxNoOfStars);
  NoOfSpaces := MaxNoOfStars DIV 2; // enough space to accomodate center
  NoOfStars := 1  // tips have just one star
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
  NoOfSpaces := NoOfSpaces - 1;
  NoOfStars := NoOfStars + 2;
end;

procedure AdjustNoOfSpacesAndStarsAfterCenter;
begin
  NoOfSpaces := NoOfSpaces + 1;
  NoOfStars := NoOfStars - 2;
end;

// ***** Main Program Starts Here *****
begin
  InitialiseNoOfSpacesAndStars;
  while NoOfStars < MaxNoOfStars
    do
      begin
        OutputLeadingSpaces;
        OutputLineOfStars;
        AdjustNoOfSpacesAndStars;
      end;

  repeat
    OutputLeadingSpaces;
    OutputLineOfStars;
    AdjustNoOfSpacesAndStarsAfterCenter;
  until NoOfStars = -1;
  Readln;
end.