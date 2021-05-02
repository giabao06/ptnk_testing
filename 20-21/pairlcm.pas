program pairlcm;
var n:int64; f:text;
const infile='pairlcm.inp'; outfile='pairlcm.out';

function gcd(x,y:int64):int64;
begin
  if y=0 then gcd:=x
  else gcd:=gcd(y, x mod y);
end;

function lcm(x,y:int64):int64;
var tmp1:int64;
begin
  tmp1:=0;
  tmp1:=x*y;
  lcm:=tmp1 div gcd(x,y);
end;

procedure fread;
begin
  assign(f,infile);
  reset(f);
  read(f,n);
  close(f);
end;

procedure proc;
var i,j,llcm:int64;
begin
  llcm:=0;
  for i:=1 to n-1 do
  for j:= i+1 to n do
  if (i+j=n) and (lcm(i,j)>llcm) then llcm:=lcm(i,j);
  assign(f,outfile);
  rewrite(f);
  writeln(f,llcm);
  close(f);
end;

begin
  fread;
  proc;
end.
