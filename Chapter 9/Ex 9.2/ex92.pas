program ex92;
{
Declare a record type to store the name of a country, the name of its currency
and the exchange rate to the $.

Write a program that reads in the details of the one country and displays them
formatted in a user-friendly way.

// ex92
Extend your program from Exercise 9.1 to read in 3 countries and their
respective details and display them in tabulated format.
}

uses
  SysUtils;

type TXECurrency = record
  CountryName: String[140];
  CurrencyName: String[140];
  ExRate: Integer;
end; {of TXECurrency}

var
  US, India, Brazil, China: TXECurrency;

begin
with US
  do
    begin
      CountryName := 'United States';
      CurrencyName := 'Dollars (USD)';
      // exchange rate to the INR
      ExRate := 68;
    end; {of with}

Writeln;
Writeln;
Writeln('Write details of your favorite 3 countries below...');

Writeln;
Writeln('First Country');
Write('Enter the country name: ');
Readln(India.CountryName);
Write('Enter the currency name: ');
Readln(India.CurrencyName);
Write('Enter the exchange rate with US dollar: ');
Readln(India.ExRate);

Writeln;
Writeln('Second Country');
Write('Enter the country name: ');
Readln(Brazil.CountryName);
Write('Enter the currency name: ');
Readln(Brazil.CurrencyName);
Write('Enter the exchange rate with US dollar: ');
Readln(Brazil.ExRate);

Writeln;
Writeln('Third Country');
Write('Enter the country name: ');
Readln(China.CountryName);
Write('Enter the currency name: ');
Readln(China.CurrencyName);
Write('Enter the exchange rate with US dollar: ');
Readln(China.ExRate);

Writeln;
Writeln;
Writeln;
Writeln('Country           Currency              Exchange Rate (against USD)');
With India
  do Writeln(CountryName, '             ', CurrencyName, '                      ', ExRate);
With Brazil
  do Writeln(CountryName, '            ', CurrencyName, '              ', ExRate);
With China
  do Writeln(CountryName, '             ', CurrencyName, '                ', ExRate);
Readln;
end.
