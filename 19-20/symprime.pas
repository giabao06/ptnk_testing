program symprime;
const filein='symprime.inp'; fileout='symprime.out';
var i:INTEGER; n:int64; t:ARRAY[1..100000] OF int64; f:text;

function snt(x:int64):boolean;
var i:INTEGER;
begin
   if x<2 then exit(false);
   for i:=2 to trunc(sqrt(x)) do
   if x mod i=0 then exit(false);
   exit(true);
end;

procedure fread;
begin
  assign(f,filein);
  reset(f);
  readln(f,n);
  for i:=1 to n do readln(f,t[i]);
  close(f);
  //for i:=1 to n do write(t[i],#32); //debug only
end;

procedure proc;
var fr,bk,tmp:int64;
begin
  fr:=0; bk:=0; tmp:=0;
  assign(f,fileout);
  rewrite(f);
  for i:=1 to n do
  if (snt(t[i])) then
  begin
    fr:=t[i]+1;
    bk:=t[i]-1;
    repeat fr:=fr+1 until snt(fr);
    repeat bk:=bk-1 until snt(bk);
    tmp:=(fr+bk) div 2;
    //writeln(tmp);
    if tmp=t[i] then writeln(f,'YES') else writeln(f,'NO');
    tmp:=0;
  end
  else if snt(t[i])=false then writeln(f,'Ko phai snt');
  close(f);
end;

begin
  fread;
  proc;
end.
