1 rem search for the golden eagle (c)1984
5 poke36879,12:print"{clear}{green}{down}{right*5}golden eagle"
10 r=7:j=12:v=16:e=18:l=0:m=0:u=0:b=0
15 dim l$(r),m%(r,3),o$(j),o(j),v$(v),m$(e)
20 data in a jungle clearing,-1,1,-1,-1,at a temple entrance,0,2,6,-1
21 data in a stone chamber,1,3,-1,-1,in a courtyard,2,-1,4,-1
25 data in a tunnel,-1,-1,5,3,in a treasure room,-1,-1,-1,4
30 data on a mountain ledge,-1,-1,-1,1,in a cave,-1,-1,-1,6
35 data vines,6,jaguar,7,door,5,water,2,statue,1,key,-1,map,2
40 data machete,0,idol,-1,eagle,5,torch,2,emerald,-1,broken statue,-1
45 data *,nor,sou,eas,wes,inv,get,dro,qui,cut,rea,unl,pus,lig,exa,loo,bre
50 data ok,huh?,you can't,looks dangerous,thick vines,nothing
55 data jaguar attacks!dead,it's dark,opened,vines cut
60 data you win!,*golden eagle*,i see something,i see something and a cave
65 data it's locked,drop treasures in cave,eagle scares jaguar,jaguar runs away
70 data it could fall
100 fori=0tor:readl$(i):fort=0to3:readm%(i,t):nextt:nexti
105 fori=0toj:reado$(i),o(i):nexti
110 fori=0tov:readv$(i):nexti
115 fori=0toe:readm$(i):nexti
150 print"{clear}{white}":printl$(l):print  
155 fori=0toj
160 ifo(i)=lthenprinto$(i);".";
165 nexti:print:print
167 ifl=4andp=0thenprintm$(7):goto200
170 ifm%(l,0)>-1thenprint"north.";
175 ifm%(l,1)>-1thenprint"south.";
180 ifm%(l,2)>-1thenprint"east.";
185 ifm%(l,3)>-1thenprint"west.";
200 gosub900
202 x=-1:y=-1:z=-1:a$="":print:print:input"{red}what now";a$
205 ifa$=""ora$=v$(0)thenprint"{green}";m$(1):goto200
210 w$=left$(a$,3):m=1
215 fori=1tolen(a$)
220 ifmid$(a$,i,1)=" "thenx=i+1
225 nexti
230 ifx>0thenn$=mid$(a$,x,3)
235 fori=0tov
240 ifw$=v$(i)theny=i
245 nexti
250 fori=0toj
255 ifn$=left$(o$(i),3)thenz=i
260 nexti
266 ify=-1theny=0
300 ify>0thenonygosub350,350,350,350,400,450,500,550,600,650,750,800,850,920,950,970
310 ifw=-1thenw=0:goto150
315 print"{cyan}";m$(m):m=0:goto200
350 ifl=7ando(1)=7thenprint"{cyan}";m$(6):end
355 ifm%(l,y-1)>-1thenl=m%(l,y-1):w=-1:return
360 m=3:return
400 print"{yellow}{down}carrying:":m=5
405 fori=0toj
410 ifo(i)=-2thenprinto$(i):m=0
415 nexti
420 return
450 ifz=0orz<5thenm=2:return
455 ifo(z)=ltheno(z)=-2:m=0:return
460 m=2:return
500 ifo(9)=-2andl=7theno(9)=l:print"{white}";m$(16):m=17:o(1)=-1:return
510 ifo(z)=-2theno(z)=l:m=0:return
520 m=7:return
550 input"{down}{cyan}are you sure (y/n)";a$
555 ifa$<>"n"thenend
560 m=0:return
600 ifz=0ando(z)=6ando(7)=-2thenm=9:o(z)=-1:m%(6,2)=7:m=13:o(11)=6:return
605 m=2:return
650 ifz=6ando(z)=-2thenm=15:return
660 m=2:return
750 ifz=2ando(z)=5andu=0ando(5)=-2thenu=1:m=8:m%(5,0)=7:print"{white}";m$(12):return
760 m=2:return
800 ifz=4ando(z)=1thenm=12:o(z)=-1:o(12)=1:o(8)=1:return
805 m=2:return
850 ifz=10ando(z)=-2andp=0thenp=1:m=0:return
852 ifz=10ando(z)=-2andp=1thenp=0:m=0:return
855 m=2:return
900 ifo(9)=7ando(11)=7thenprint:print"{white}";m$(10):end
910 return
920 ifz=0ando(z)=6thenm=4:return
922 ifz=1ando(z)=7thenm=3:return
924 ifz=2ando(z)=5andu=0thenm=14:return
926 ifz=2ando(z)=5andu=1thenm=8:return
928 ifz=9ando(z)=loro(z)=-2thenm=11:return
930 ifz=4ando(z)=1thenm=18:return
950 w=-1:return
970 ifz=8ando(z)=-2thenm=12:o(5)=l:o(z)=-1:return
