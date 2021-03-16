program maxenergy;
const infile='maxenergy.inp'; outfile='maxenergy.out';
var f:text; t:ARRAY[1..1000000] OF int64; x,y,z,n,Q:int64;

procedure fread;
var i:int64;
begin
  assign(f,infile);
  reset(f);
  readln(f,n);
  for i:=1 to n do read(f,t[i]);
  close(f);
  //for i:=1 to n do write(t[i],#32);
end;

procedure proc;
var i,j,k,large:int64;
BEGIN
  assign(f,outfile);
  rewrite(f);
  large:=0; x:=0; y:=0; z:=0; Q:=0;
  for i:=1 to n-3 do
  for j:=i+1 to n-2 do
  for k:=j+1 to n do
  begin
    x:=t[i];
    y:=t[j];
    z:=t[k];
    Q:=(x-y)*(y-z);
    if large<Q then large:=Q;
  end;
  write(f,large);
  close(f);
END;

begin
  fread;
  proc;
end.
