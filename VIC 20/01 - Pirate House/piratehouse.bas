1 rem pirates house, scott julian (c)1983
5 poke36879,12:print"{clear}{green}{down}{right*4}pirates  house"
10 r=7:j=14:v=16:e=19:l=0:m=0:u=0
15 dim l$(r),m%(r,3),o$(j),o(j),v$(v),m$(e)
20 data at the front gate,-1,1,6,-1,in the main hall,0,2,-1,-1,in captain's quarters,1,-1,-1,7
25 data in dark cellar,-1,4,-1,1,in hidden passage,3,-1,-1,-1,in treasure vault,-1,-1,4,-1
30 data in lookout tower,-1,-1,-1,0,at secret dock,-1,-1,2,-1
35 data gate,0,parrot,0,door,1,painting,2,pirate,2,candle,3,lever,4,safe,-1
40 data skeleton,6,chest,5,key,-1,map,3,rope,7,gold,-1,gem,-1
45 data *,nor,sou,eas,wes,inv,get,dro,qui,rea,pul,exa,loo,unl,tal,rem,tie
50 data ok,i don't understand,i can't,i can't go that way,nothing
55 data pirates house.find the  *gem* and escape,i see something
60 data pirate attacks!       you're dead,looks dangerous,i don't have it
65 data you found the treasure,a secret passage,reveals a safe
70 data congratulations!      you found treasures,squawk! help!         leave treasure here
75 data map shows,move painting...,he is sleeping, pirate tied up, its a gate
100 fori=0tor:readl$(i):fort=0to3:readm%(i,t):nextt:nexti
105 fori=0toj:reado$(i),o(i):nexti
110 fori=0tov:readv$(i):nexti
115 fori=0toe:readm$(i):nexti
150 print"{clear}{white}":printl$(l):print
155 fori=0toj
160 ifo(i)=lthenprinto$(i);".";
165 nexti:print:print
170 ifm%(l,0)>-1thenprint"north.";
175 ifm%(l,1)>-1thenprint"south.";
180 ifm%(l,2)>-1thenprint"east.";
185 ifm%(l,3)>-1thenprint"west.";
200 ifo(13)=0ando(14)=0thenprintm$(13):end
202 x=-1:y=-1:z=-1:a$="":print:print:input"{red}what now";a$
205 ifa$=""ora$=v$(0)thenprint"{green}huh?":goto200
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
265 iflen(n$)<3thenz=0
300 ify>0thenonygosub350,350,350,350,400,450,500,550,600,650,700,800,850,900,950,970
310 ifw=-1thenw=0:goto150
315 print"{cyan}";m$(m):m=0:goto200
350 ifm%(l,y-1)>-1thenl=m%(l,y-1):w=-1:return
355 ifm%(l,y-1)=-1thenm=3:return
400 print"{yellow}{down}you are carrying:":m=4
405 fori=0toj
410 ifo(i)=-2thenprinto$(i):m=0
415 nexti
420 return
450 ifz=4ando(z)=2andu<2thenm=7:print"{cyan}";m$(m):end
452 ifz<10thenm=2:return
460 ifz>9ando(z)=ltheno(z)=-2:m=0:return
465 ifz>9thenm=2:return
500 ifz>9andz<15ando(z)=-2theno(z)=l:m=0:return
505 ifz=14ando(z)=-2andl=0ando(13)=-2theno(14)=l:m=13:print"{cyan}";m$(13):end
510 m=0:return
550 input"{down}{cyan}are you sure (y/n)?";a$
555 ifa$<>"n"thenend
560 return
600 ifz=11ando(z)=-2thenprint"{yellow}";m$(15):print m$(16):u=1:m=0:return
610 m=2:return
650 ifz=6ando(z)=4andu=1thenm=11:m%(4,3)=5:return
660 m=2:return
700 ifz=2ando(z)=lthenm=6:m%(1,2)=3:return
715 ifz=8ando(z)=6thenm=6:o(10)=6:return
716 ifz=9ando(z)=5thenm=10:o(13)=5:return
717 ifz=4ando(z)=2thenm=17:return
718 ifz=0ando(z)=0thenm=19:return
720 m=4:return
800 w=-1:return
810 m=2:return
850 ifz=7ando(z)=2ando(10)=-2thenm=6:o(7)=-1:o(14)=2:m%(2,3)=7:return
860 m=2:return
900 ifz=1ando(z)=lthenm=14:return
910 m=2:return
950 ifz=3ando(z)=2andu=2thenm=12:o(7)=2:return
960 ifz=3ando(z)=2andu<2thenm=7:print"{cyan}";m$(m):end
970 ifz=4ando(z)=2ando(12)=-2theno(12)=l:m=18:u=2:return
980 m=2:return