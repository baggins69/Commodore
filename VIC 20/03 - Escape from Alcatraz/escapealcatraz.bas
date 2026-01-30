1 rem escape alcatraz, scott julian (c)1984
5 poke36879,12:print"{clear}{green}{down}{right*3}escape alcatraz"
10 r=7:j=14:v=17:e=22:l=0:m=0:u=0:k=0:b=0
15 dim l$(r),m%(r,3),o$(j),o(j),v$(v),m$(e)
20 data prison cell,-1,-1,-1,-1, in corridor,0,2,3,6,in laundry room,1,-1,-1,-1
21 data in cafeteria,-1,4,-1,1, in guard station,3,-1,-1,-1,on the roof,-1,-1,-1,4
22 data in workshop,-1,-1,1,-1,at boat dock,-1,-1,-1,-1
23 data bars,0,vents,0,post,5,guard,4,tray,3,alarm,4,door,4,file,6,uniform,2
24 data rope,6,boat,7,flashlight,1,jacket,2,keys,-1,*,-1
25 data *,nor,sou,eas,wes,inv,get,dro,qui,dig,unl,cut,dis,pad,cli,exa,loo,tie
26 data ok,i don't understand,i can't,i can't go that way,nothing
27 data escape alcatraz. find a way out
28 data i see something,guard shoots! you die,looks risky
29 data i don't have it,alarm ringing!,it opens a path
30 data the bars are cut,congratulations! you  escaped
31 data alarm disabled,door locked,rough seas. you drown.
32 data its a life jacket,its armed, unarmed, unlocked
33 data guard here, tie rope!
34 fori=0tor:readl$(i):fort=0to3:readm%(i,t):nextt:nexti
35 fori=0toj:reado$(i),o(i):nexti
36 fori=0tov:readv$(i):nexti
37 fori=0toe:readm$(i):nexti
150 print"{clear}{white}":printl$(l):print
155 fori=0toj
160 ifo(i)=lthenprinto$(i); ".";
165 nexti:print:print
170 ifm%(l,0)>-1thenprint"north.";
175 ifm%(l,1)>-1thenprint"south.";
180 ifm%(l,2)>-1thenprint"east.";
185 ifm%(l,3)>-1thenprint"west.";
200 x=-1:y=-1:z=-1:a$="":print:print:input"{red}what now";a$
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
266 ify=-1theny=0
267 ifz=-1thenz=14
300 ify>0thenonygosub350,350,350,350,400,450,500,550,600,650,700,750,800,850,920,940,950
310 ifw=-1thenw=0:goto150
315 print"{cyan}";m$(m):m=0:goto200
350 ifm%(l,4-1)>-1ando(8)<>-2andl=3thenprint"{cyan}";m$(21)+chr$(13)+m$(7):end
355 ifm%(l,y-1)>-1thenl=m%(l,y-1):w=-1:return
360 ifm%(l,y-1)=-1thenm=3:return
400 print"{yellow}{down}you have:":m=4
405 fori=0toj
410 ifo(i)=-2thenprinto$(i):m=0
415 nexti
420 return
450 ifz<7thenm=2:return
455 ifz=8ando(z)=2ando(13)=-1ando(13)=-1thenm=6:o(13)=l:o(z)=-2:return
460 ifz>6ando(z)=ltheno(z)=-2:m=0:return
465 ifz>6thenm=2:return
500 ifz>6andz<15ando(z)=-2theno(z)=l:m=0:return
505 ifz=14ando(z)=-2andl=7ando(10)=7theno(14)=7:m=13:print"{cyan}";m$(13):end
510 m=0:return
550 input"{down}{cyan}you sure (y/n)";a$
555 ifa$<>"n"thenend
560 return
600 ifz=2ando(z)=-2ando(9)=0thenm=10:o(9)=-1:m%(0,1)=1:return
605 ifz=2ando(z)=-2thenm=11:return
610 m=2:return
650 ifz=6ando(z)=lando(13)=-2andu=0thenm=6:u=1:m%(l,2)=5:return
660 m=2:return
700 ifz=0ando(z)=lando(7)=-2thenm=11:o(z)=-1:m%(0,0)=-1:m%(0,1)=1:return
705 ifz=0ando(z)=lthenm=8:return
710 ifz=3ando(z)=lthenm=6:o(z)=-1:o(2)=l:return
715 ifz=6ando(z)=lthenm=6:o(z)=-1:o(8)=0:return
720 ifz=9ando(z)=lthenm=4:return
725 ifz=10ando(z)=lthenm=6:o(10)=-1:m%(5,3)=4:m%(4,2)=5:return
730 m=4:return
750 ifz=5ando(z)=4andk=0thenk=1:m=19:return
755 m=2:return
800 ifz=10ando(10)=7ando(12)=-2thenprint"{cyan}";m$(13):end
805 ifz=10ando(10)=7thenprint"{cyan}";m$(16):end
810 m=2:return
850 ifz=9ando(z)=5andb=1andl=5thenl=7:o(z)=7:w=-1:return
852 ifz=9ando(z)=landb=1andl=7thenl=5:o(z)=5:w=-1:return
855 m=2:return
900 ifz=6ando(z)=0thenm=6:o(6)=l:return
905 m=2:return
920 ifz=1ando(z)=0thenm=6:o(7)=0:return
921 ifz=6ando(z)=4andu=0thenm=15:return
922 ifz=12ando(z)=2thenm=17:return
923 ifz=5ando(z)=4andk=0thenm=18:return
924 ifz=5ando(z)=4andk=1thenm=19:return
925 ifz=6ando(z)=5andu=1thenm=20:return
926 ifz=2ando(z)=5thenm=22:return
927 ifz=10ando(z)=7thenm=8:return
940 w=-1:return
950 ifz=9ando(z)=-2andl=5andb=0thenm=0:o(z)=l:b=1:return
955 m=2:return