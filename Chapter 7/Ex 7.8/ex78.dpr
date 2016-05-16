program ex78;
{
Store in a 1-D array a set of 5 place names, and in a 2-D array the distances between the places.

Ensure that the order of the places is the same in both arrays. When the names of 2 places are input,
the distance between them is displayed.

If they are not both in the table, a suitable message should be displayed.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Places : array [1..5] of String;
  Distances : array [1..5, 1..5] of Integer;
  city1, city2 : Integer;

begin
  Places[1] := 'Mumbai';
  Places[2] := 'New Delhi';
  Places[3] := 'Bangalore';
  Places[4] := 'Hyderabad';
  Places[5] := 'Chennai';

  Distances[1,1] := 0;
  Distances[1,2] := 1384;
  Distances[1,3] := 986;
  Distances[1,4] := 706;
  Distances[1,5] := 1250;
  Distances[2,1] := 1384;
  Distances[2,2] := 0;
  Distances[2,3] := 2112;
  Distances[2,4] := 1529;
  Distances[2,5] := 2168;
  Distances[3,1] := 986;
  Distances[3,2] := 2112;
  Distances[3,3] := 0;
  Distances[3,4] := 575;
  Distances[3,5] := 348;
  Distances[4,1] := 706;
  Distances[4,2] := 1529;
  Distances[4,3] := 575;
  Distances[4,4] := 0;
  Distances[4,5] := 633;
  Distances[5,1] := 1250;
  Distances[5,2] := 2168;
  Distances[5,3] := 348;
  Distances[5,4] := 633;
  Distances[5,5] := 0;

  writeln('The top 5 most populous cities in India are [1] Mumbai, [2] New Delhi, [3] Bangalore, [4] Hyderabad, and [5] Chennai');
  writeln;
  writeln('This program will help you in calculating the distances between them...');

  writeln;
  writeln('so lets begin... ');
  writeln;

  write('From city: ');
  readln(city1);
  write('To city: ');
  readln(city2);
  writeln;

  if (city1 = city2)
     then writeln('fuck you, man, stop fooling around. that would be 0. obvio.')
     else writeln('The distance between ', Places[city1], ' and ', Places[city2], ' is ', Distances[city1, city2], ' KM.');

  Readln;

  { TODO -oUser -cConsole Main : Insert code here }
end.
