program parentheses;
var s:string; f:text;
const infile='parentheses.inp'; outfile='parentheses.out';

procedure fread;
begin
  assign(f,infile);
  reset(f);
  readln(f,s);
  close(f);
end;

procedure proc;
var i:int64;
begin

end;
