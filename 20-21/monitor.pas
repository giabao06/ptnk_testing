program monitor;
var a:array[1..1000000] of int64; f:text; n:int64;
const infile='monitor.inp'; outfile='monitor.out';

procedure fread;
var i:longint;
begin
  assign(f,infile);
  reset(f);
  readln(f,n);
  for i:=1 to n do read(f,a[i]);
  close(f);
end;

procedure sort;
var i,j,ind:int64;
begin
  for i:=2 to n-1 do
    begin
      ind:=a[i];
      j:=i;
      while (j>i) and (a[j-1]>ind) do
      begin
        a[j]:=a[j-1];
        j:=j-1;
      end;
    a[j]:=ind;
    end;
end;

procedure proc;
var i,j,count,lcount,id:integer;
begin
   lcount:=0; count:=0;
   for i:=1 to n-1 do
   for j:=i+1 to n do
    begin
      if a[i]=a[j] then count:=j-i+1;
      if count>lcount then
      begin
        lcount:=count;
        id:=a[i];
      end;
    end;
    assign(f,outfile);
    rewrite(f);
    writeln(f,id);
    writeln(f,lcount);
    close(f);
end;

begin
  fread;
  sort;
  proc;
end.
