program ex82;
{
Write and test a procedure OutputSymbols, which takes two parameters an integer n
and a character symbol. The procedure is to display, on the same line, the symbol n
times. For example, the call OutputSymbols(5, '#') should display #####
}

uses
  SysUtils;

var
  i : Integer;
  c : Char;

  procedure OutputSymbols(var i : Integer; var c : char);
  var Count : Integer;
  begin
    for Count := 1 to i
      do write(c);
  end; {end of procedure}

  //** main program starts here ********
begin
  Write('Please enter a symbol: ');
  Readln(c);
  Write('Please enter an integer: ');
  Readln(i);
  Writeln;
  OutputSymbols(i, c);
  Readln;
end.