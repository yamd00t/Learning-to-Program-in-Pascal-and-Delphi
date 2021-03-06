{
 The worked example from WE81.pas could be written:
}

program PyramidOfStars; // to display a pyramid of stars
{$APPTYPE CONSOLE}
uses
  SysUtils, StrUtils;
var MaxNoOfStars, NoOfStars, NoOfSpaces : Integer;

procedure Initialise (var Spaces, Stars, Max : Integer);
begin
  Write('How many stars should be at the base? ');
  Readln(Max);
  Spaces := Max DIV 2;  // enough space to accomodate base
  Stars := 1;  // tip has just one star
end;

procedure OutputLeadingSpaces (Spaces : Integer);
var Count : Integer;
begin
  for Count := 1 to Spaces
    do Write (' ');  // no new line required
end;

procedure OutputLineOfStars (Stars : Integer);
var Count : Integer;
begin
  for Count := 1 to Stars
    do Write ('*');
  writeln  // move to next line
end;

procedure Adjust (var Spaces, Stars : Integer);
begin
  Spaces := Spaces - 1;
  Stars := Stars + 2;
end;

//******* MAIN PROGRAM STARTS HERE ************
begin
  Initialise (NoOfSpaces, NoOfStars, MaxNoOfStars);
  Repeat
    OutputLeadingSpaces (NoOfSpaces);
    OutputLineOfStars (NoOfStars);
    Adjust (NoOfSpaces, NoOfStars);
  until NoOfStars > MaxNoOfStars;
  Readln
end.
// HINT: use 58; for best result