program pgcd;
var a:array[1..100000] of int64; n,k:int64; f:text;
const infile='gcd.inp'; outfile='gcd.out';

function gcd(x,y:int64):int64;
  begin
    if y=0 then gcd:=x
    else gcd:=gcd(y, x mod y);
  end;

procedure fread;
var i:int64;
begin
  n:=0; k:=0;
  assign(f,infile);
  reset(f);
  read(f,n); readln(f,k);
  for i:=1 to n do read(f,a[i]);
  close(f);
  //for i:=1 to n do write(a[i],#32);
end;

procedure proc;
var i,j,lgcd,tgcd1,tgcd2:int64;
begin
  tgcd1:=0; lgcd:=0; tgcd2:=0; j:=0;
  for i:=1 to n-k+1 do
  for j:=i+1 to i+k-1 do
    BEGIN
      tgcd1:=gcd(a[i],a[j]);
      tgcd2:=gcd(tgcd1,a[j+1]);
      if tgcd2>lgcd then lgcd:=tgcd2;
    END;
  assign(f,outfile);
  rewrite(f);
  writeln(f,lgcd);
  close(f);
end;

begin
  fread;
  proc;
end.
