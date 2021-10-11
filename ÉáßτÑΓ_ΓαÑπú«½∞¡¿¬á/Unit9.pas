unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Button1: TButton;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    UpDown5: TUpDown;
    UpDown6: TUpDown;
    UpDown7: TUpDown;
    UpDown8: TUpDown;
    UpDown9: TUpDown;
    UpDown10: TUpDown;
    UpDown11: TUpDown;
    UpDown12: TUpDown;
    UpDown13: TUpDown;
    UpDown14: TUpDown;
    UpDown15: TUpDown;
    UpDown16: TUpDown;
    UpDown17: TUpDown;
    UpDown18: TUpDown;
    UpDown19: TUpDown;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
var a,b,c,p,s,va,vb,vc,ro,rv,ma,mb,mc,ba,bb,bc,ya,yb,yg,st,v,k1,k2,gip:real;
procedure Perimetr;
var a1,b1,c1,p1:real;
begin
a1:=StrToFloat(Form1.Edit1.Text);
b1:=StrToFloat(Form1.Edit2.Text);
c1:=StrToFloat(Form1.Edit3.Text);
p1:=a1+b1+c1;
Form1.Edit4.Text:=FloatToStrF(p1,ffFixed,4,2);
end;
procedure Ploshad1;
var a1,b1,c1,p1,s1:real;
begin
a1:=StrToFloat(Form1.Edit1.Text);
b1:=StrToFloat(Form1.Edit2.Text);
c1:=StrToFloat(Form1.Edit3.Text);
p1:=(a1+b1+c1)/2;
s1:=sqrt(p1*(p1-a1)*(p1-b1)*(p1-c1));
Form1.Edit5.Text:=FloatToStrF(s1,ffFixed,4,2);
end;
procedure Ploshad2(st,v:real);
var a1,va1,s1:real;
begin
a1:=st;
va1:=v;
s1:=0.5*a1*va1;
Form1.Edit5.Text:=FloatToStrF(s1,ffFixed,4,2);
end;
procedure Perimetr2;
var s1,r1,p1:real;
begin
s1:=StrToFloat(Form1.Edit5.Text);
r1:=StrToFloat(Form1.Edit10.Text);
p1:=2*s1/r1;
Form1.Edit4.Text:=FloatToStrF(p1,ffFixed,4,2);
end;
function Visota(st:real): real;
var a1,v1:real;
begin
s:=StrToFloat(Form1.Edit5.Text);
a1:=st;
v1:=2*s/a1;
visota:=v1;
end;
function Mediana(st,st1,st2:real):real;
var a1,b1,c1,m1:real;
begin
a1:=st;
b1:=st1;
c1:=st2;
m1:=0.5*sqrt(2*(sqr(st1)+sqr(st2))-sqr(st));
Mediana:=m1;
end;
function Bissictrisa(st,st1,st2:real):real;
var a1,b1,c1,bis:real;
begin
a1:=st;
b1:=st1;
c1:=st2;
bis:=sqrt(c1*b1*(c1+b1+a1)*(c1+b1-a1))/(c1+b1);
Bissictrisa:=bis;
end;
procedure RadiusOpis;
var a1,b1,c1,s1,r1:real;
begin
a1:=StrToFloat(Form1.Edit1.Text);
b1:=StrToFloat(Form1.Edit2.Text);
c1:=StrToFloat(Form1.Edit3.Text);
s1:=StrToFloat(Form1.Edit5.Text);
r1:=(a1*b1*c1)/(4*s1);
Form1.Edit9.Text:=FloatToStrF(r1,ffFixed,4,2);
end;
procedure RadiusVpis;
var p1,s1,r1:real;
begin
p1:=StrToFloat(Form1.Edit4.Text);
s1:=StrToFloat(Form1.Edit5.Text);
r1:=2*s1/p1;
Form1.Edit10.Text:=FloatToStrF(r1,ffFixed,4,2);
end;
procedure RadiusVpis2;
var v1,v2,v3,r1:real;
begin
v1:=StrToFloat(Form1.Edit6.Text);
v2:=StrToFloat(Form1.Edit7.Text);
v3:=StrToFloat(Form1.Edit8.Text);
r1:=1/(1/v1+1/v2+1/v3);
Form1.Edit10.Text:=FloatToStrF(r1,ffFixed,4,2);
end;
function Ygol(st,st1,st2:real):real;
var a1,b1,c1,kosyg,yg1:real;
begin
a1:=st;
b1:=st1;
c1:=st2;
kosyg:=(sqr(b1)+sqr(c1)-sqr(a1))/(2*b1*c1);
yg1:=kosyg;
Ygol:=yg1;
end;
function Storona1(vk:real):real;
var s1,v1,a1:real;
begin
v1:=vk;
s1:=StrToFloat(Form1.Edit5.Text);
a1:=2*s1/v1;
Storona1:=a1;
end;
function Storona2(med,med1,med2:real):real;
var m1,m2,m3,st1:real;
begin
m1:=med;
m2:=med1;
m3:=med2;
st1:=2/3*sqrt(2*(sqr(m2)+sqr(m3))-sqr(m1));
Storona2:=st1;
end;
function Storona3(st1,yg1:real):real;
var s1,a1,b1,y1:real;
begin
s1:=StrToFloat(Form1.Edit5.Text);
b1:=st1;
y1:=yg1;
a1:=(2*s1)/(b1*sin(y1));
Storona3:=a1;
end;
function Tcos(st1,st2,yg1:real):real;
var a1,b1,c1,y1:real;
begin
b1:=st1;
c1:=st2;
y1:=yg1;
a1:=sqrt(sqr(b1)+sqr(c1)-2*b1*c1*cos(y1));
Tcos:=a1;
end;
function Storona4(st,st1:real):real;
var s1,r1,a1,b1,c1:real;
begin
s1:=StrToFloat(Form1.Edit5.Text);
r1:=StrToFloat(Form1.Edit9.Text);
b1:=st;
c1:=st1;
a1:=(4*r1*s1)/(b1*c1);
Storona4:=a1;
end;
function Storona5(st,st1:real):real;
var a1,b1,c1,s1,r1:real;
begin
b1:=st;
c1:=st1;
s1:=StrToFloat(Form1.Edit5.Text);
r1:=StrToFloat(Form1.Edit10.Text);
a1:=(2*(s1-0.5*b1*r1-0.5*c1*r1))/r1;
Storona5:=a1;
end;
function Storona6(yg1:real):real;
var a1,y1,r1:real;
begin
y1:=yg1;
r1:=StrToFloat(Form1.Edit9.Text);
a1:=2*r1*sin(y1);
Storona6:=a1;
end;
function Storona7(st,ygk,yg2:real):real;
var a1,b1,y1,y2:real;
begin
b1:=st;
y1:=ygk;
y2:=yg2;
a1:=(b1*sin(y1))/sin(y2);
Storona7:=a1;
end;
function Storona8(st,ygk:real):real;
var a1,b1,y1,s1:real;
begin
a1:=st;
y1:=ygk;
s1:=StrToFloat(Form1.Edit5.Text);
b1:=2*s1/(a1*sin(y1));
Storona8:=b1;
end;
function SinYg(st,st1:real):real;
var a1,b1,s1,y1:real;
begin
a1:=st;
b1:=st1;
s1:=StrToFloat(Form1.Edit5.Text);
y1:=2*s1/(a1*b1);
SinYg:=y1;
end;
function Obrcos(st,ygk,st1:real):real;
var a1,b1,c1,c2,w1,w2,y1,d:real;
begin
a1:=st;
b1:=st1;
y1:=ygk;
w1:=2*a1*cos(y1);
w2:=sqr(a1)-sqr(b1);
d:=sqr(w1)-4*w2;
c1:=(-w1+sqrt(d))/2;
c2:=(-w1-sqrt(d))/2;
if c2>c1 then Obrcos:=c2 else Obrcos:=c1;
end;
procedure Rad(st,ygk:real);
var a1,y1,r1:real;
begin
a1:=st;
y1:=ygk;
r1:=a1/(sin(y1)*2);
Form1.Edit9.Text:=FloatToStrF(r1,ffFixed,4,2);
end;
function Visr(vis,vis1:real):real;
var v1,v2,v3,r1:real;
begin
v1:=vis;
v2:=vis1;
r1:=StrToFloat(Form1.Edit10.Text);
v3:=1/(1/r1-1/v1-1/v2);
Visr:=v3;
end;
function StorM(med,st,st1:real):real;
var a1,b1,c1,m1:real;
begin
b1:=st;
c1:=st1;
m1:=med;
a1:=sqrt(2*(sqr(b1)+sqr(c1))-4*sqr(m1));
StorM:=a1;
end;
function StorM2(st,med,st2:real):real;
Var a1,b1,c1,m1:real;
Begin
a1:=st;
m1:=med;
b1:=st2;
c1:=sqrt(2*sqr(m1)+0.5*sqr(a1)-sqr(b1));
storM2:=c1;
end;
function Meds(st,med,med1:real):real;
var a1,m1,m2,m3:real;
begin
a1:=st;
m1:=med;
m2:=med1;
m3:=sqrt((8*(sqr(m1)+sqr(m2))-9*sqr(a1))/4);
Meds:=m3;
end;
function Medp(st,med,medd:real):real;
var a1,m1,m2,m3:real;
begin
a1:=st;
m1:=med;
m2:=medd;
m3:=sqrt((9*sqr(a1)+4*sqr(m1)-8*sqr(m2))/8);
Medp:=m3;
end;
procedure TForm1.Button1Click(Sender: TObject);
label 1,2;
begin
ya:=StrToFloat(Form1.Edit17.Text);
yb:=StrToFloat(Form1.Edit18.Text);
yg:=StrToFloat(Form1.Edit19.Text);
1:a:=StrToFloat(Form1.Edit1.Text);
b:=StrToFloat(Form1.Edit2.Text);
c:=StrToFloat(Form1.Edit3.Text);
p:=StrToFloat(Form1.Edit4.Text);
s:=StrToFloat(Form1.Edit5.Text);
va:=StrToFloat(Form1.Edit6.Text);
vb:=StrToFloat(Form1.Edit7.Text);
vc:=StrToFloat(Form1.Edit8.Text);
ro:=StrToFloat(Form1.Edit9.Text);
rv:=StrToFloat(Form1.Edit10.Text);
ma:=StrToFloat(Form1.Edit11.Text);
mb:=StrToFloat(Form1.Edit12.Text);
mc:=StrToFloat(Form1.Edit13.Text);
ba:=StrToFloat(Form1.Edit14.Text);
bb:=StrToFloat(Form1.Edit15.Text);
bc:=StrToFloat(Form1.Edit16.Text);
if (a<0)or(b<0)or(c<0)or(p<0)or(s<0)or(va<0)or(vb<0)or(vc<0)or(ro<0)or(rv<0)or(ma<0)
or(mb<0)or(mc<0)or(ba<0)or(bb<0)or(bc<0)or(ya<0)or(yb<0)or(yg<0) then
MessageDlg('Не один из элементов не может быть отрицательным!',mtError,[mbOk],0)else
begin
if ((a>0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)
and(ro>=0)and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)
and(ya>=0)and(yb>=0)and(yg>=0))then
begin
if (a+b>c)and(b+c>a)and(a+c>b)then
begin
Perimetr;
Ploshad1;
s:=StrToFloat(Form1.Edit5.Text);
va:=Visota(a);
vb:=Visota(b);
vc:=Visota(c);
Form1.Edit6.Text:=FloatToStrF(va,ffFixed,4,2);
Form1.Edit7.Text:=FloatToStrF(vb,ffFixed,4,2);
Form1.Edit8.Text:=FloatToStrF(vc,ffFixed,4,2);
RadiusOpis;
RadiusVpis;
ma:=Mediana(a,b,c);
mb:=Mediana(b,a,c);
mc:=Mediana(c,a,b);
Form1.Edit11.Text:=FloatToStrF(ma,ffFixed,4,2);
Form1.Edit12.Text:=FloatToStrF(mb,ffFixed,4,2);
Form1.Edit13.Text:=FloatToStrF(mc,ffFixed,4,2);
ba:=Bissictrisa(a,b,c);
bb:=Bissictrisa(b,a,c);
bc:=Bissictrisa(c,a,b);
Form1.Edit14.Text:=FloatToStrF(ba,ffFixed,4,2);
Form1.Edit15.Text:=FloatToStrF(bb,ffFixed,4,2);
Form1.Edit16.Text:=FloatToStrF(bc,ffFixed,4,2);
ya:=Ygol(a,b,c);
yb:=ygol(b,a,c);
yg:=Ygol(c,a,b);
Form1.Edit17.Text:='cos ='+FloatToStrF(ya,ffFixed,4,2);
Form1.Edit18.Text:='cos ='+FloatToStrF(yb,ffFixed,4,2);
Form1.Edit19.Text:='cos ='+FloatToStrF(yg,ffFixed,4,2);
if (a=b)and(a=c) then Form1.Label21.Caption:='Треугольник равносторонний.';
if ((a=b)and(a<>c))or((b=c)and(b<>a))or((a=c)and(c<>b))then
Form1.Label21.Caption:='Треугольник равнобедренный.';
if (sqr(a)+sqr(b)=sqr(c))or (sqr(a)+sqr(c)=sqr(b))or(sqr(b)+sqr(c)=sqr(a))then
Form1.Label21.Caption:='Треугольник прямоугольный.';
goto 2;
end
else
begin
MessageDlg('Треугольника с такими сторонами не существует!',mtError,[mbOk],0);
goto 2;
end;
end;
end;
if((a>0)and(b>0)and(c=0)and(p>0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
c:=p-a-b;
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
b:=p-a-c;
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=p-c-b;
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b=0)and(c=0)and(p>=0)and(s>0)and(va>0)and(vb>0)and(vc>0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=Storona1(va);
b:=Storona1(vb);
c:=Storona1(vc);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b=0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb>0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=Storona2(ma,mb,mc);
b:=Storona2(mb,ma,mc);
c:=Storona2(mc,ma,mb);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>0))then
begin
a:=Storona3(b,yg);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
c:=Tcos(a,b,yg);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b=0)and(c>0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
a:=Storona3(c,yb);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
b:=Tcos(a,c,yb);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>0))then
begin
b:=Storona3(a,yg);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
c:=Tcos(a,b,yg);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b=0)and(c>0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
b:=Storona3(c,ya);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
a:=Tcos(c,b,ya);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
c:=Storona3(a,yb);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
b:=Tcos(a,c,yb);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
c:=Storona3(b,ya);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
a:=Tcos(c,b,ya);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
a:=Tcos(c,b,ya);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
b:=Tcos(a,c,yb);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>0))then
begin
c:=Tcos(a,b,yg);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=Storona4(b,c);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
b:=Storona4(a,c);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
c:=Storona4(b,a);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=Storona5(b,c);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
b:=Storona5(a,c);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
c:=Storona5(b,a);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
a:=Storona6(ya);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b=0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
b:=Storona6(yb);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>0))then
begin
c:=Storona6(yg);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>0)and(yg=0))then
begin
b:=Storona7(a,yb,ya);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
yg:=180-ya-yb;
c:=Storona7(b,yg,yb);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb=0)and(yg>0))then
 begin
 c:=Storona7(a,yg,ya);
 Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
 yb:=180-ya-yg;
 b:=Storona7(a,yb,ya);
 Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
 goto 1;
 end;
if((a>0)and(b=0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya=0)
and(yb>0)and(yg>0))then
begin
ya:=180-yb-yg;
b:=Storona7(a,yb,ya);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
c:=Storona7(a,yg,ya);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>0)and(yg=0))then
begin
a:=Storona7(b,ya,yb);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
yg:=180-ya-yb;
c:=Storona7(b,yg,yb);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb=0)and(yg>0))then
 begin
 yb:=180-ya-yg;
 c:=Storona7(b,yg,yb);
 Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
 a:=Storona7(b,ya,yb);
 Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
 goto 1;
 end;
if((a=0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya=0)
and(yb>0)and(yg>0))then
begin
c:=Storona7(b,yg,yb);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
ya:=180-yb-yg;
a:=Storona7(b,ya,yb);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>0)and(yg=0))then
begin
yg:=180-ya-yb;
b:=Storona7(c,yb,yg);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
a:=Storona7(c,ya,yg);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb=0)and(yg>0))then
 begin
 a:=Storona7(c,ya,yg);
 Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
 yb:=180-ya-yg;
 b:=Storona7(c,yb,yg);
 Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
 goto 1;
 end;
if((a=0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya=0)
and(yb>0)and(yg>0))then
begin
ya:=180-yb-yg;
b:=Storona7(c,yb,yg);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
a:=Storona7(c,ya,yg);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va>0)and(vb>0)and(vc>0)and(ro>=0)
and(rv=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
RadiusVpis2;
goto 1;
end;
if((a>0)and(b>=0)and(c>=0)and(p>=0)and(s=0)and(va>0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
Ploshad2(a,va);
goto 1;
end;
if((a>=0)and(b>=0)and(c>=0)and(p=0)and(s>0)and(va>0)and(vb>0)and(vc>0)and(ro>=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
Perimetr2;
goto 1;
end;
if((a>=0)and(b>0)and(c>=0)and(p>=0)and(s=0)and(va>=0)and(vb>0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
Ploshad2(b,vb);
goto 1;
end;
if((a>=0)and(b>=0)and(c>0)and(p>=0)and(s=0)and(va>=0)and(vb>=0)and(vc>0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
Ploshad2(c,vc);
goto 1;
end;
if((a=0)and(b>=0)and(c>=0)and(p>=0)and(s>0)and(va>0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=2*s/va;
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b=0)and(c>=0)and(p>=0)and(s>0)and(va>=0)and(vb>0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
b:=2*s/vb;
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
c:=2*s/vc;
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>=0)and(c>=0)and(p>=0)and(s>0)and(va=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
va:=2*s/a;
Form1.Edit6.Text:=FloatToStrF(va,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>0)and(c>=0)and(p>=0)and(s>0)and(va>=0)and(vb=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
vb:=2*s/b;
Form1.Edit7.Text:=FloatToStrF(vb,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
vc:=2*s/c;
Form1.Edit8.Text:=FloatToStrF(vc,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>=0)and(c>=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
c:=Storona8(a,yb);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
b:=Tcos(a,c,yb);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>=0)and(c>=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>0))then
begin
b:=Storona8(a,yg);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
c:=Tcos(a,b,yg);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>0)and(c>=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
c:=Storona8(b,ya);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
a:=Tcos(b,c,ya);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>0)and(c>=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>0))then
begin
a:=Storona8(b,yg);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
c:=Tcos(a,b,yg);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
a:=Storona8(c,yb);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
b:=Tcos(a,c,yb);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
b:=Storona8(c,yb);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
a:=Tcos(b,c,ya);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg=0))then
begin
k1:=SinYg(a,b);
k2:=sqrt(1-sqr(k1));
c:=sqrt(sqr(a)+sqr(b)-2*a*b*k2);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya=0)
and(yb>=0)and(yg>=0))then
begin
k1:=SinYg(c,b);
k2:=sqrt(1-sqr(k1));
a:=sqrt(sqr(c)+sqr(b)-2*c*b*k2);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb=0)and(yg>=0))then
begin
k1:=SinYg(a,c);
k2:=sqrt(1-sqr(k1));
b:=sqrt(sqr(a)+sqr(c)-2*a*c*k2);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>=0)and(p>0)and(s=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
s:=p*rv/2;
Form1.Edit5.Text:=FloatToStrF(s,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>=0)and(p>0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
rv:=2*s/p;
Form1.Edit10.Text:=FloatToStrF(rv,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>=0)and(p=0)and(s>0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
p:=2*s/rv;
Form1.Edit4.Text:=FloatToStrF(p,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
b:=Obrcos(a,ya,c);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
c:=Obrcos(a,ya,b);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
a:=Obrcos(b,yb,c);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
c:=Obrcos(b,yb,a);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>0))then
begin
b:=Obrcos(c,yg,a);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>0))then
begin
a:=Obrcos(c,yg,b);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>0)
and(yb>=0)and(yg>=0))then
begin
Rad(a,ya);
goto 1;
end;
if((a>=0)and(b>0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>0)and(yg>=0))then
begin
Rad(b,yb);
goto 1;
end;
if((a>=0)and(b>=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>0))then
begin
Rad(c,yg);
goto 1;
end;
if((a>=0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va=0)and(vb>0)and(vc>0)and(ro>=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
va:=Visr(vb,vc);
Form1.Edit6.Text:=FloatToStrF(va,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va>0)and(vb=0)and(vc>0)and(ro>=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
vb:=Visr(va,vc);
Form1.Edit7.Text:=FloatToStrF(vb,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va>0)and(vb>0)and(vc=0)and(ro>=0)
and(rv>0)and(ma>=0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
vc:=Visr(vb,va);
Form1.Edit8.Text:=FloatToStrF(vc,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=StorM(ma,b,c);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
b:=StorM(mb,b,a);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
c:=StorM(mc,b,a);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
c:=StorM2(a,ma,b);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb>=0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
b:=StorM2(a,ma,c);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>0)and(c=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
c:=StorM2(b,mb,a);
Form1.Edit3.Text:=FloatToStrF(c,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>0)and(mc>=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=StorM2(b,mb,c);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
b:=StorM2(c,mc,a);
Form1.Edit2.Text:=FloatToStrF(b,ffFixed,4,2);
goto 1;
end;
if((a=0)and(b>0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>=0)and(mb>=0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
a:=StorM2(c,mc,b);
Form1.Edit1.Text:=FloatToStrF(a,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma=0)and(mb>0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
ma:=Meds(a,mb,mc);
Form1.Edit11.Text:=FloatToStrF(ma,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb=0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
mb:=Meds(b,ma,mc);
Form1.Edit12.Text:=FloatToStrF(mb,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb>0)and(mc=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
mc:=Meds(c,mb,ma);
Form1.Edit13.Text:=FloatToStrF(mc,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb>0)and(mc=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
mc:=Medp(a,ma,mb);
Form1.Edit13.Text:=FloatToStrF(mc,ffFixed,4,2);
goto 1;
end;
if((a>0)and(b>=0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb=0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
mb:=Medp(a,ma,mc);
Form1.Edit12.Text:=FloatToStrF(mb,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb>0)and(mc=0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
mc:=Medp(b,mb,ma);
Form1.Edit13.Text:=FloatToStrF(mc,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>0)and(c>=0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma=0)and(mb>0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
ma:=Medp(b,mb,mc);
Form1.Edit11.Text:=FloatToStrF(ma,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma>0)and(mb=0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
mb:=Medp(c,mc,ma);
Form1.Edit12.Text:=FloatToStrF(mb,ffFixed,4,2);
goto 1;
end;
if((a>=0)and(b>=0)and(c>0)and(p>=0)and(s>=0)and(va>=0)and(vb>=0)and(vc>=0)and(ro>=0)
and(rv>=0)and(ma=0)and(mb>0)and(mc>0)and(ba>=0)and(bb>=0)and(bc>=0)and(ya>=0)
and(yb>=0)and(yg>=0))then
begin
ma:=Medp(c,mc,mb);
Form1.Edit11.Text:=FloatToStrF(ma,ffFixed,4,2);
goto 1;
end;
2:if Form1.Edit1.Text='0' then
begin
Form1.Edit1.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit2.Text='0' then
begin
Form1.Edit2.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit3.Text='0' then
begin
Form1.Edit3.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit4.Text='0' then
begin
Form1.Edit4.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit5.Text='0' then
begin
Form1.Edit5.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit6.Text='0' then
begin
Form1.Edit6.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit7.Text='0' then
begin
Form1.Edit7.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit8.Text='0' then
begin
Form1.Edit8.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit9.Text='0' then
begin
Form1.Edit9.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit10.Text='0' then
begin
Form1.Edit10.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit11.Text='0' then
begin
Form1.Edit11.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit12.Text='0' then
begin
Form1.Edit12.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit13.Text='0' then
begin
Form1.Edit13.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit14.Text='0' then
begin
Form1.Edit14.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit15.Text='0' then
begin
Form1.Edit15.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit16.Text='0' then
begin
Form1.Edit16.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit17.Text='0' then
begin
Form1.Edit17.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit18.Text='0' then
begin
Form1.Edit18.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
if Form1.Edit19.Text='0' then
begin
Form1.Edit19.Text:='Не найдено';
Label21.Caption:='Мало данных или неизвестна формула вычисления'
end;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Edit1.Text:='0';
Form1.Edit2.Text:='0';
Form1.Edit3.Text:='0';
Form1.Edit4.Text:='0';
Form1.Edit5.Text:='0';
Form1.Edit6.Text:='0';
Form1.Edit7.Text:='0';
Form1.Edit8.Text:='0';
Form1.Edit9.Text:='0';
Form1.Edit10.Text:='0';
Form1.Edit11.Text:='0';
Form1.Edit12.Text:='0';
Form1.Edit13.Text:='0';
Form1.Edit14.Text:='0';
Form1.Edit15.Text:='0';
Form1.Edit16.Text:='0';
Form1.Edit17.Text:='0';
Form1.Edit18.Text:='0';
Form1.Edit19.Text:='0';
Form1.Label21.Caption:=' ';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Label21.Caption:='Программа вначале попытается найти стороны треугольника, а после остальные элементы. Либо найдет максимум элементов по приведенным формулам (см. Использованные формулы).';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Label21.Caption:='Автор VdM. Если у Вас есть замечания, другие формулы или иное по данной программе, то пишите на lexus-ole-2006@mail.ru';
end;

end.
