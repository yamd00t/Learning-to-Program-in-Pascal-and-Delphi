program ex68;
{
Write a program that asks the user for a word, and then displays the ASCII code for
each letter in the word.

Hint: Process one character at a time, using Read rather than Readln. As the user
types characters at the keyboard, the characters are stored in a buffer. When the
user presses the Enter key, the buffer is made available to the Read / Readln procedure.

Read will take individual characters from the buffer as required but leave the end-of-line
character produced by the Enter key, in the buffer. You can use EoLn to check for the
end-of-line character. To clear the input buffer use Readln.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var
  aword : Char;
  acode : Integer;

begin
Writeln('This program displays the ASCII code for each letter in the word');
Write('Please enter a word: ');
Repeat
  begin
    Read(aword);
    acode := Ord (aword);
    Write(acode, ' ');
  end
until Eoln;

Readln;
Readln;

  { TODO -oUser -cConsole Main : Insert code here }
end.
