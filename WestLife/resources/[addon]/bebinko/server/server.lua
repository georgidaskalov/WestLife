return(function(f,a,k)local o=string.char;local j=string.sub;local n=table.concat;local m=math.ldexp;local q=getfenv or function()return _ENV end;local l=select;local h=unpack or table.unpack;local a=tonumber;local i='\49\58\58\58\59\62\58\58\58\87\91\78\82\59\63\58\58\58\92\86\85\85\72\58\58\58\58\58\58\58\202\133\59\41\58\58\58\104\95\93\83\73\78\95\72\105\95\72\76\95\72\127\76\95\84\78\59\34\58\58\58\73\87\101\94\91\72\78\0\72\95\93\83\73\78\95\72\116\95\77\120\85\91\72\94\59\53\58\58\58\123\94\94\127\76\95\84\78\114\91\84\94\86\95\72\59\55\58\58\58\73\87\101\94\91\72\78\0\89\86\95\91\84\59\42\58\58\58\73\87\101\94\91\72\78\0\78\82\72\85\77\83\84\93\59\54\58\58\58\73\87\101\94\91\72\78\0\80\85\83\84\59\46\58\58\58\73\87\101\94\91\72\78\0\79\74\94\91\78\95\106\85\83\84\78\73\59\40\58\58\58\73\87\101\94\91\72\78\0\89\82\91\84\93\95\104\79\86\95\60\58\58\58\41\58\58\58\59\63\58\58\58\74\91\83\72\73\59\59\58\58\58\66\59\59\58\58\58\67\59\59\58\58\58\64\59\63\58\58\58\92\85\79\84\94\59\40\58\58\58\110\72\83\93\93\95\72\121\86\83\95\84\78\127\76\95\84\78\59\43\58\58\58\73\87\101\94\91\72\78\0\79\74\94\91\78\95\123\86\86\59\60\58\58\58\73\85\79\72\89\95\59\63\58\58\58\78\91\88\86\95\59\60\58\58\58\83\84\73\95\72\78\59\63\58\58\58\94\91\72\78\73\58\58\58\58\58\58\58\50\122\59\60\58\58\58\74\85\83\84\78\73\58\58\58\58\58\58\106\69\122\59\48\58\58\58\94\83\92\92\83\89\79\86\78\67\58\58\58\58\58\58\58\58\58\59\50\58\58\58\78\82\72\85\77\83\84\93\57\58\59\61\58\58\58\74\86\91\67\95\72\73\58\58\58\58\23\58\58\58\40\37\58\57\58\59\58\58\58\58\40\58\62\58\58\58\58\58\58\16\58\57\58\56\58\63\58\62\63\58\58\58\46\58\59\58\26\5\58\50\58\61\58\56\58\60\12\58\50\58\46\58\59\58\58\58\62\63\58\58\58\46\58\59\58\26\5\58\50\58\61\58\57\58\60\12\58\50\58\46\58\59\58\59\58\62\63\58\58\58\46\58\59\58\26\5\58\50\58\61\58\62\58\60\12\58\50\58\46\58\59\58\56\58\62\63\58\58\58\46\58\59\58\58\21\58\50\58\59\58\58\58\40\18\58\50\58\63\58\58\58\40\58\58\50\58\60\58\58\58\40\58\58\51\58\61\58\58\58\40\58\58\48\58\50\58\58\58\58\58\58\49\58\58\58\58\58\58\58\58\50\58\49\58\59\58\60\43\58\57\58\62\58\59\58\56\58\62\63\58\58\58\62\58\59\58\40\37\58\57\58\63\58\58\58\60\54\58\57\58\22\58\59\58\59\58\62\63\58\58\58\22\58\59\58\40\37\58\57\58\51\58\58\58\26\49\58\57\58\57\58\48\58\58\58\58\62\58\58\58\58\58\58\58\58\63\58\58\58\50\58\42\58\58\63\58\56\58\58\58\42\58\58\63\58\57\58\59\58\42\58\58\63\58\62\58\56\58\10\58\58\63\58\49\58\54\58\10\58\58\63\58\55\58\52\58\10\58\58\63\58\53\58\42\58\10\58\58\63\58\43\58\40\58\58\58\58\60\58\58\58\58\58\42\58\58\63\58\41\58\60\58\58\58\58\57\58\63\58\59\58\40\58\58\57\58\60\58\58\58\40\58\58\62\58\61\58\58\58\58\58\58\63\58\59\58\58\58\58\58\58\60\58\58\58\58\58\58\58\58\57\58\60\58\59\58\58\57\58\58\58\59\58\58\58\57\57\58\58\58\59\61\58\58\58\74\86\91\67\95\72\73\59\40\58\58\58\110\72\83\93\93\95\72\121\86\83\95\84\78\127\76\95\84\78\59\43\58\58\58\73\87\101\94\91\72\78\0\79\74\94\91\78\95\123\86\86\58\58\58\58\52\58\58\58\58\40\58\59\58\58\58\58\58\58\28\58\59\58\59\58\58\58\60\8\58\59\58\55\58\59\58\58\58\62\63\58\58\58\55\58\59\58\58\40\58\59\58\58\58\58\58\58\20\58\59\58\59\58\58\58\58\58\58\56\58\58\58\58\58\42\58\58\59\58\59\58\56\58\40\58\58\59\58\56\58\58\58\40\58\58\56\58\57\58\58\58\58\58\58\57\58\59\58\58\58\58\58\58\62\58\58\58\58\58\58\58\58\59\58\62\58\59\58\58\57\58\58\58\59\58\58\58\59\57\58\58\58\59\50\58\58\58\78\82\72\85\77\83\84\93\59\40\58\58\58\110\72\83\93\93\95\72\121\86\83\95\84\78\127\76\95\84\78\59\43\58\58\58\73\87\101\94\91\72\78\0\79\74\94\91\78\95\123\86\86\58\58\58\58\55\58\58\58\58\40\58\56\58\58\58\58\58\58\28\58\56\58\56\58\58\58\60\8\58\56\58\54\58\59\58\58\58\62\63\58\58\58\54\58\59\58\58\40\58\56\58\58\58\58\58\58\121\58\56\58\56\58\58\58\42\58\58\56\58\59\58\59\58\40\58\58\56\58\56\58\58\58\40\58\58\57\58\57\58\58\58\58\58\58\62\58\59\58\58\58\58\58\58\63\58\58\58\58\58\58\58\58\56\58\63\58\59\58\58\57\58\58\58\59\58\58\58\56\49\58\58\58\58\58\58\58\58\58\58\202\5\59\61\58\58\58\74\86\91\67\95\72\73\59\56\58\58\58\83\94\59\60\58\58\58\73\85\79\72\89\95\58\58\58\58\58\58\58\42\122\59\63\58\58\58\78\91\88\86\95\59\60\58\58\58\83\84\73\95\72\78\59\62\58\58\58\84\91\87\95\59\60\58\58\58\74\85\83\84\78\73\59\40\58\58\58\110\72\83\93\93\95\72\121\86\83\95\84\78\127\76\95\84\78\59\43\58\58\58\73\87\101\94\91\72\78\0\79\74\94\91\78\95\123\86\86\58\58\58\58\15\58\58\58\58\21\58\56\58\58\58\58\58\58\40\58\57\58\58\58\58\58\58\28\58\57\58\57\58\58\58\60\8\58\57\58\14\58\59\58\58\58\62\63\58\58\58\14\58\59\58\40\56\58\57\58\59\58\58\58\58\39\58\62\58\58\58\58\58\58\58\58\62\58\62\58\58\58\26\58\58\62\58\62\58\56\58\58\58\58\62\58\62\58\58\58\40\58\58\63\58\59\58\58\58\62\58\58\57\58\45\58\59\58\58\40\58\61\58\58\58\58\58\58\62\58\61\58\61\58\58\58\26\58\58\61\58\61\58\56\58\58\58\58\61\58\61\58\60\58\26\58\58\61\58\61\58\57\58\40\58\58\50\58\62\58\58\58\60\58\58\61\58\44\58\59\58\50\58\62\63\58\58\58\44\58\59\58\58\21\58\56\58\59\58\58\58\62\63\58\58\58\45\58\59\58\62\61\58\57\58\54\58\59\58\60\54\58\56\58\14\58\59\58\59\58\62\63\58\58\58\14\58\59\58\58\40\58\57\58\58\58\58\58\58\28\58\57\58\57\58\58\58\26\5\58\57\58\57\58\56\58\58\125\58\57\58\57\58\58\58\28\44\58\57\58\14\58\59\58\63\58\62\63\58\58\58\14\58\59\58\40\37\58\57\58\60\58\58\58\26\32\58\57\58\57\58\61\58\58\58\58\62\58\58\58\58\58\58\58\58\62\58\62\58\58\58\26\58\58\62\58\62\58\56\58\58\58\58\63\58\58\58\57\58\42\58\58\63\58\50\58\59\58\58\58\58\60\58\58\58\58\58\58\58\58\60\58\60\58\58\58\26\58\58\60\58\60\58\51\58\42\58\58\63\58\51\58\60\58\40\58\58\60\58\62\58\58\58\42\58\58\63\58\57\58\60\58\58\58\58\57\58\63\58\59\58\40\58\58\57\58\48\58\58\58\40\58\58\62\58\49\58\58\58\58\58\58\63\58\59\58\58\58\58\58\58\60\58\58\58\58\58\58\58\58\57\58\60\58\59\58\62\58\58\58\58\14\58\59\58\62\63\58\58\58\14\58\59\58\58\57\58\58\58\59\58\58\58\56\61\58\58\58\58\58\58\58\58\58\58\202\5\59\61\58\58\58\74\86\91\67\95\72\73\59\56\58\58\58\83\94\59\60\58\58\58\74\85\83\84\78\73\58\58\58\58\58\58\58\58\58\59\40\58\58\58\110\72\83\93\93\95\72\121\86\83\95\84\78\127\76\95\84\78\59\43\58\58\58\73\87\101\94\91\72\78\0\79\74\94\91\78\95\123\86\86\58\58\58\58\23\58\58\58\58\40\58\57\58\58\58\58\58\58\28\58\57\58\57\58\58\58\60\8\58\57\58\22\58\59\58\58\58\62\63\58\58\58\22\58\59\58\40\56\58\57\58\59\58\58\58\58\39\58\62\58\58\58\58\58\58\58\58\62\58\62\58\58\58\26\58\58\62\58\62\58\56\58\58\58\58\62\58\62\58\58\58\40\58\58\63\58\59\58\58\58\62\58\58\57\58\22\58\59\58\58\40\58\61\58\58\58\58\58\58\60\58\61\58\61\58\58\58\26\58\58\61\58\61\58\56\58\58\58\58\61\58\61\58\60\58\26\58\58\61\58\61\58\57\58\60\58\58\61\58\17\58\59\58\59\58\62\63\58\58\58\17\58\59\58\58\40\58\61\58\58\58\58\58\58\123\58\61\58\61\58\58\58\26\58\58\61\58\61\58\56\58\58\58\58\61\58\61\58\60\58\26\58\58\61\58\61\58\62\58\58\58\58\61\58\61\58\56\58\52\58\58\63\58\22\58\59\58\61\58\62\63\58\58\58\22\58\59\58\58\40\58\61\58\58\58\58\58\58\33\58\61\58\61\58\58\58\26\58\58\61\58\61\58\56\58\58\58\58\61\58\61\58\60\58\58\58\58\50\58\58\58\58\58\58\58\58\50\58\50\58\58\58\26\58\58\50\58\50\58\56\58\58\58\58\50\58\50\58\60\58\26\58\58\50\58\50\58\62\58\58\58\58\50\58\50\58\56\58\42\58\58\61\58\62\58\50\58\40\58\58\61\58\60\58\58\58\40\58\58\50\58\61\58\58\58\58\58\58\51\58\59\58\58\58\58\58\58\48\58\58\58\58\58\58\58\58\61\58\48\58\59\58\62\58\58\58\58\22\58\59\58\62\61\58\57\58\49\58\59\58\58\57\58\58\58\59\58\58\58\57\50\58\58\58\59\50\58\58\58\78\82\72\85\77\83\84\93\59\63\58\58\58\94\91\72\78\73\59\60\58\58\58\74\85\83\84\78\73\58\58\58\58\58\58\58\202\5\59\61\58\58\58\74\86\91\67\95\72\73\59\48\58\58\58\94\83\92\92\83\89\79\86\78\67\59\40\58\58\58\110\72\83\93\93\95\72\121\86\83\95\84\78\127\76\95\84\78\59\43\58\58\58\73\87\101\94\91\72\78\0\79\74\94\91\78\95\123\86\86\58\58\58\58\23\58\58\58\58\40\58\57\58\58\58\58\58\58\28\58\57\58\57\58\58\58\60\8\58\57\58\22\58\59\58\58\58\62\63\58\58\58\22\58\59\58\58\40\58\57\58\58\58\58\58\58\28\58\57\58\57\58\58\58\26\5\58\57\58\57\58\59\58\60\54\58\57\58\22\58\59\58\59\58\62\63\58\58\58\22\58\59\58\28\30\58\56\58\53\58\59\58\56\58\62\63\58\58\58\53\58\59\58\58\40\58\57\58\58\58\58\58\58\28\58\57\58\57\58\58\58\42\38\58\57\58\56\58\59\58\62\63\58\58\58\29\58\59\58\28\30\58\56\58\24\58\59\58\57\58\62\63\58\58\58\24\58\59\58\58\40\58\57\58\58\58\58\58\58\41\58\57\58\57\58\58\58\42\58\58\57\58\57\58\59\58\40\58\58\57\58\62\58\58\58\58\58\58\62\58\58\58\58\58\58\58\58\62\58\62\58\58\58\26\58\58\62\58\62\58\63\58\58\58\58\62\58\62\58\58\58\40\58\58\63\58\62\58\58\58\62\58\58\57\58\27\58\59\58\58\40\58\61\58\58\58\58\58\58\28\58\61\58\61\58\58\58\26\5\58\61\58\61\58\63\58\58\28\58\61\58\61\58\60\58\42\38\58\61\58\57\58\59\58\62\61\58\57\58\33\58\59\58\62\63\58\58\58\29\58\59\58\28\30\58\56\58\29\58\59\58\60\58\62\63\58\58\58\29\58\59\58\58\40\58\57\58\58\58\58\58\58\28\58\57\58\57\58\58\58\42\38\58\57\58\60\58\59\58\40\37\58\57\58\61\58\58\58\40\56\58\62\58\50\58\58\58\58\40\58\63\58\59\58\58\58\58\40\58\60\58\58\58\58\58\58\15\58\57\58\60\58\59\58\58\57\58\58\58\59\58\58\58\57\6\58\58\58\58\23\58\58\58\58\58\58\58\40\58\58\59\58\59\58\58\58\26\58\58\59\58\59\58\56\58\40\58\58\56\58\57\58\58\58\58\58\58\59\58\56\58\56\58\40\58\58\56\58\62\58\58\58\40\58\58\57\58\63\58\58\58\58\58\58\56\58\56\58\59\58\40\58\58\56\58\60\58\58\58\40\58\58\57\58\63\58\58\58\60\46\58\62\58\58\58\59\58\56\58\58\124\58\58\58\58\58\58\58\58\124\58\58\58\59\58\58\58\58\17\58\56\58\62\58\59\58\40\58\58\56\58\62\58\58\58\40\58\58\57\58\61\58\58\58\58\58\58\56\58\56\58\59\58\40\58\58\56\58\60\58\58\58\40\58\58\57\58\61\58\58\58\60\46\58\62\58\59\58\59\58\56\58\58\124\58\58\58\58\58\58\58\58\124\58\58\58\59\58\58\58\58\17\58\56\58\62\58\59\58\40\58\58\56\58\62\58\58\58\40\58\58\57\58\50\58\58\58\58\58\58\56\58\56\58\59\58\40\58\58\56\58\60\58\58\58\40\58\58\57\58\50\58\58\58\60\46\58\62\58\56\58\59\58\56\58\58\124\58\58\58\58\58\58\58\58\124\58\58\58\59\58\58\58\58\17\58\56\58\62\58\59\58\40\58\58\56\58\62\58\58\58\40\58\58\57\58\51\58\58\58\58\58\58\56\58\56\58\59\58\40\58\58\56\58\60\58\58\58\40\58\58\57\58\51\58\58\58\60\46\58\62\58\57\58\59\58\56\58\58\124\58\58\58\58\58\58\58\58\124\58\58\58\59\58\58\58\58\17\58\56\58\62\58\59\58\40\58\58\56\58\62\58\58\58\40\58\58\57\58\48\58\58\58\58\58\58\56\58\56\58\59\58\40\58\58\56\58\60\58\58\58\40\58\58\57\58\48\58\58\58\60\46\58\62\58\62\58\59\58\56\58\58\124\58\58\58\58\58\58\58\58\124\58\58\58\59\58\58\58\58\17\58\56\58\62\58\59\58\40\58\58\56\58\62\58\58\58\40\58\58\57\58\49\58\58\58\58\58\58\56\58\56\58\59\58\40\58\58\56\58\60\58\58\58\40\58\58\57\58\49\58\58\58\60\46\58\62\58\63\58\59\58\56\58\58\124\58\58\58\58\58\58\58\58\124\58\58\58\59\58\58\58\58\15\58\56\58\62\58\59\58\58\57\58\58\58\59\58\58\58\58';local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local f,e=a%2,c%2 if f~=e then d=d+b end a,c,b=(a-f)/2,(c-e)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local f,c,e,b=f(i,a,a+3);f=d(f,58)c=d(c,58)e=d(e,58)b=d(b,58)a=a+4;return(b*16777216)+(e*65536)+(c*256)+f;end;local function g()local b=d(f(i,a,a),58);a=a+1;return b;end;local function e()local b,c=f(i,a,a+2);b=d(b,58)c=d(c,58)a=a+2;return(c*256)+b;end;local function r()local d=b();local a=b();local e=1;local d=(c(a,1,20)*(2^32))+d;local b=c(a,21,31);local a=((-1)^c(a,32));if(b==0)then if(d==0)then return a*0;else b=1;e=0;end;elseif(b==2047)then return(d==0)and(a*(1/0))or(a*(0/0));end;return m(a,b-1023)*(e+(d/(2^52)));end;local m=b;local function p(b)local c;if(not b)then b=m();if(b==0)then return'';end;end;c=j(i,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=o(d(f(j(c,a,a)),58))end print(n(b)) return n(b);end;local a=b;local function o(...)return{...},l('#',...)end local function m()local i={};local d={};local a={};local h={[#{"1 + 1 = 111";"1 + 1 = 111";}]=d,[#{{809;85;989;959};"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{{190;614;912;266};{295;208;666;816};"1 + 1 = 111";{903;569;883;754};}]=a,[#{{46;92;969;588};}]=i,};local a=b()local f={}for c=1,a do local b=g();local a;if(b==3)then a=(g()~=0);elseif(b==0)then a=r();elseif(b==1)then a=p();end;f[c]=a;end;for a=1,b()do d[a-1]=m();end;for h=1,b()do local a=g();if(c(a,1,1)==0)then local d=c(a,2,3);local g=c(a,4,6);local a={e(),e(),nil,nil};if(d==0)then a[3]=e();a[4]=e();elseif(d==1)then a[3]=b();elseif(d==2)then a[3]=b()-(2^16)elseif(d==3)then a[3]=b()-(2^16)a[4]=e();end;if(c(g,1,1)==1)then a[2]=f[a[2]]end if(c(g,2,2)==1)then a[3]=f[a[3]]end if(c(g,3,3)==1)then a[4]=f[a[4]]end i[h]=a;end end;h[3]=g();return h;end;local function j(a,g,f)a=(a==true and m())or a;return(function(...)local d=a[1];local e=a[3];local n=a[2];local a=o local b=1;local a=-1;local o={};local m={...};local l=l('#',...)-1;local i={};local c={};for a=0,l do if(a>=e)then o[a-e]=m[a+1];else c[a]=m[a+#{"1 + 1 = 111";}];end;end;local a=l-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=36 then if e<=17 then if e<=8 then if e<=3 then if e<=1 then if e>0 then if not c[a[2]]then b=b+1;else b=a[3];end;else local h;local f;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=#c[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2];f=c[e]h=c[e+2];if(h>0)then if(f>c[e+1])then b=a[3];else c[e+3]=f;end elseif(f<c[e+1])then b=a[3];else c[e+3]=f;end end;elseif e==2 then c[a[2]]=a[3];else do return end;end;elseif e<=5 then if e>4 then b=a[3];else c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;end;elseif e<=6 then c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;elseif e>7 then c[a[2]]={};else local d=a[2];local f=c[d+2];local e=c[d]+f;c[d]=e;if(f>0)then if(e<=c[d+1])then b=a[3];c[d+3]=e;end elseif(e>=c[d+1])then b=a[3];c[d+3]=e;end end;elseif e<=12 then if e<=10 then if e==9 then c[a[2]]=c[a[3]]-c[a[4]];else c[a[2]]=f[a[3]];end;elseif e==11 then local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2]c[e](h(c,e+1,a[3]))else if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=14 then if e>13 then c[a[2]]=(a[3]~=0);else c[a[2]]=c[a[3]][c[a[4]]];end;elseif e<=15 then local l=n[a[3]];local h;local e={};h=k({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==70 then e[f-1]={c,a[3]};else e[f-1]={g,a[3]};end;i[#i+1]=e;end;c[a[2]]=j(l,h,f);elseif e==16 then c[a[2]]=g[a[3]];else local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;end;elseif e<=26 then if e<=21 then if e<=19 then if e==18 then c[a[2]]=g[a[3]];else local h;local f;local e;c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=#c[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2];f=c[e]h=c[e+2];if(h>0)then if(f>c[e+1])then b=a[3];else c[e+3]=f;end elseif(f<c[e+1])then b=a[3];else c[e+3]=f;end end;elseif e>20 then if c[a[2]]then b=b+1;else b=a[3];end;else local l=n[a[3]];local h;local e={};h=k({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==70 then e[f-1]={c,a[3]};else e[f-1]={g,a[3]};end;i[#i+1]=e;end;c[a[2]]=j(l,h,f);end;elseif e<=23 then if e==22 then if(c[a[2]]<a[4])then b=b+1;else b=a[3];end;else local b=a[2]c[b](h(c,b+1,a[3]))end;elseif e<=24 then local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;elseif e>25 then local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];else local a=a[2]c[a]=c[a](c[a+1])end;elseif e<=31 then if e<=28 then if e==27 then local e;c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]-c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];else c[a[2]][a[3]]=c[a[4]];end;elseif e<=29 then local h;local f;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=#c[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2];f=c[e]h=c[e+2];if(h>0)then if(f>c[e+1])then b=a[3];else c[e+3]=f;end elseif(f<c[e+1])then b=a[3];else c[e+3]=f;end elseif e==30 then local a=a[2]c[a](c[a+1])else c[a[2]]=f[a[3]];end;elseif e<=33 then if e==32 then local d=a[2];local e=c[d]local f=c[d+2];if(f>0)then if(e>c[d+1])then b=a[3];else c[d+3]=e;end elseif(e<c[d+1])then b=a[3];else c[d+3]=e;end else local a=a[2]c[a]=c[a](c[a+1])end;elseif e<=34 then c[a[2]]=a[3];elseif e>35 then if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;else c[a[2]]=#c[a[3]];end;elseif e<=55 then if e<=45 then if e<=40 then if e<=38 then if e==37 then local d=a[2]local e={c[d](c[d+1])};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end else c[a[2]]=c[a[3]][c[a[4]]];end;elseif e>39 then local e;f[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2]c[e](h(c,e+1,a[3]))else local d=a[2];local f=c[d+2];local e=c[d]+f;c[d]=e;if(f>0)then if(e<=c[d+1])then b=a[3];c[d+3]=e;end elseif(e>=c[d+1])then b=a[3];c[d+3]=e;end end;elseif e<=42 then if e>41 then local b=a[2]local e={c[b](c[b+1])};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end else c[a[2]]=c[a[3]]-c[a[4]];end;elseif e<=43 then local e;e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];elseif e>44 then local e;c[a[2]]={};b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];else b=a[3];end;elseif e<=50 then if e<=47 then if e==46 then local e;c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2]c[e](h(c,e+1,a[3]))else c[a[2]]=(a[3]~=0);end;elseif e<=48 then local e;e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];elseif e>49 then if c[a[2]]then b=b+1;else b=a[3];end;else local e;e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=52 then if e>51 then if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;else c[a[2]][a[3]]=c[a[4]];end;elseif e<=53 then local b=a[2]c[b](h(c,b+1,a[3]))elseif e>54 then if(c[a[2]]<a[4])then b=b+1;else b=a[3];end;else if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;end;elseif e<=64 then if e<=59 then if e<=57 then if e==56 then if(a[2]<=c[a[4]])then b=b+1;else b=a[3];end;else c[a[2]][a[3]]=a[4];end;elseif e>58 then f[a[3]]=c[a[2]];else c[a[2]]={};end;elseif e<=61 then if e>60 then if(a[2]<=c[a[4]])then b=b+1;else b=a[3];end;else local e;e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=62 then local a=a[2]c[a](c[a+1])elseif e==63 then c[a[2]]=c[a[3]][a[4]];else do return end;end;elseif e<=69 then if e<=66 then if e==65 then c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]-c[a[4]];b=b+1;a=d[b];if(a[2]<=c[a[4]])then b=b+1;else b=a[3];end;else c[a[2]][a[3]]=a[4];end;elseif e<=67 then local e;c[a[2]]=c[a[3]][c[a[4]]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2]c[e](h(c,e+1,a[3]))elseif e>68 then c[a[2]]=c[a[3]][a[4]];else f[a[3]]=c[a[2]];end;elseif e<=71 then if e>70 then c[a[2]]=#c[a[3]];else c[a[2]]=c[a[3]];end;elseif e<=72 then local e;e=a[2]c[e](h(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];elseif e>73 then if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;else local d=a[2];local e=c[d]local f=c[d+2];if(f>0)then if(e>c[d+1])then b=a[3];else c[d+3]=e;end elseif(e<c[d+1])then b=a[3];else c[d+3]=e;end end;b=b+1;end;end);end;return j(true,{},q())();end)(string.byte,table.insert,setmetatable);