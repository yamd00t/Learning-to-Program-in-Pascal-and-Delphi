program ex94;
{
ex91
Declare a record type to store the name of a country, the name of its currency
and the exchange rate to the $.

Write a program that reads in the details of the one country and displays them
formatted in a user-friendly way.

ex94
Extend your program from ex91 to store details of 10 countries in an array of
records. Display the details in tabulated format.
}

uses
  SysUtils;

type TCountry = record
  CountryName: String[140];
  CountryCurrency: String[140];
end; {of Country}

var
  Country : array [1..500] of TCountry;
  NoOfCountries, Ptr : Integer;

begin
NoOfCountries := 10;
Writeln('This program stores details of 10 countries in an array of records.');
// we can use a for loop to store details of 10 countries in an array of records
for Ptr := 1 to NoOfCountries
  do
    begin
      Write('Enter country name: ');
      Readln(Country[Ptr].CountryName);
      Write('Enter currency name: ');
      Readln(Country[Ptr].CountryCurrency);
      Writeln;
    end;

Writeln;
Writeln('Country Name           Country Currency');
for Ptr := 1 to NoOfCountries
  do
    Writeln(Country[Ptr].CountryName, '                           ', Country[Ptr].CountryCurrency);

Readln;
end.
