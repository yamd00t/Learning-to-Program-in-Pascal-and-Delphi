program ex102;
{
Write a program that reads lines of text from a text file
and displays them to the user.
You can create a text file in any text editor.
Save it in the same folder as the code for this program.
Remember to use Eof(FileName) to check when you reach the end of the file.
}

uses
  SysUtils,
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

var
  f:textfile;
  linetxt:string;

begin
  assignfile(f, 'TextFile.txt');
  try
    reset(f);
    while not eof(f) do
    begin
      readln(f, linetxt);
      writeln(linetxt);
    end;

    close(f);
  except
    writeln('File Error - Please check your file');
  end;
  writeln;
  writeln;
  writeln('Press <Enter> to Quit');
  readln;
end.

