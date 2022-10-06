10 rem snake
20 rem unexpanded vic 20 
30 rem by scott julian

100 rem variables
105 hs=0:dimp(20,1)
110 w=22:h=23:fd=0:sp=30:fx=0:fy=0:sc=0:ln=2:x=0:y=1 
160 p(0,x)=int(w/2):p(0,y)=int(h/2):t$="o"
170 sm=7680:cm=38400:so=36877
180 j=1

200 rem title screen
210 pokeso+2,29:pokeso+1,255
211 print"{clear}{down}{right*4}{green}snake - vic 20"
212 print"{down*2}{right*6}{red}written by"
213 print"{down}{right*5}scott julian"
214 print"{down*2}{right*7}{purple}controls"
215 print"{down}{right*7}a = left"
216 print"{down}{right*7}s = right"
217 print"{down}{right*7}o = up"
218 print"{down}{right*7}k = down"
219 print"{down*2}{right}{reverse on}{blue}press k for keyboard{reverse off}" 
220 print"{right}{reverse on}{blue}press j for joystick{reverse off}"
222 geta$:ifa$=""then222
223 ifa$="k"thenj=0:goto230
224 ifa$="j"thenj=1:goto230
225 goto222
230 print"{clear}"
235 gosub900

300 rem game loop
310 gosub400:rem move array
320 gosub500:rem move snake / keyboard 
330 gosub600:rem perform test
340 gosub700:rem draw snake
350 rem fori=1tosp:nexti
390 goto300

400 rem move array 
410 fori=lnto1step-1 
420 p(i,x)=p(i-1,x) 430 p(i,y)=p(i-1,y) 
440 next i
450 return

500 rem move snake / read keyboard 
505 ifj=1then550
510 getk$
515 ifk$<>""thent$=k$
520 ift$="o"thenp(0,y)=p(0,y)-1
525 ift$="k"thenp(0,y)=p(0,y)+1 530 ift$="a"thenp(0,x)=p(0,x)-1 
535 ift$="s"thenp(0,x)=p(0,x)+1 540 return

550 rem joystick
555 s1=PEEK(37151):POKE37154,127:T1=PEEK(37152):POKE37154,255 
557 if(4ands1)=0thentp=1
560 if(8ands1)=0thentp=2
565 if(16ands1)=0thentp=3
570 if(128andt1)=0thentp=4
575 iftp=1thenp(0,y)=p(0,y)-1
580 iftp=2thenp(0,y)=p(0,y)+1
585 iftp=3thenp(0,x)=p(0,x)-1
590 iftp=4thenp(0,x)=p(0,x)+1
595 return

600 rem perform tests
610 ifp(0,x)=fxandp(0,y)=fythensc=sc+1:gosub800 
620 fori=1toln
630 ifln>2andp(0,x)=p(i,x)andp(0,y)=p(i,y)then1000 
635 iffx=p(i,x)andfy=p(i,y)thengosub900
640 nexti
650 ifp(0,x)>worp(0,x)<-1then1000
660 ifp(0,y)>horp(0,y)<-1then1000
690 return

700 rem draw snake
710 pokesm+p(ln,x)+w*p(ln,y),32 
720 pokecm+p(ln,x)+w*p(ln,y),1 
730 fori=1toln-1
760 pokesm+p(i,x)+w*p(i,y),81 
770 pokecm+p(i,x)+w*p(i,y),7 
780 nexti
790 return

800 rem grow the snake and add new food 
810 ifln<20thenln=ln+1
820 p(ln,x)=p(ln-1,x)
830 p(ln,y)=p(ln-1,y)
840 ifsp>10thensp=sp-2 
850 gosub900:gosub1200 
860 return

900 rem create food
910 fx=int(rnd(0)*w-1)+1 
920 fy=int(rnd(0)*h-1)+1 
930 pokesm+fx+w*fy,94 
940 pokecm+fx+w*fy,3 
950 return

1000 rem game over
1005 pokesm+p(i,x)+w*p(i,y),24
1006 pokecm+p(i,x)+w*p(i,y),4
1008 poke 37154,255
1010 print"{home}{right*6}{down*4}{red}game over"
1020 print"{right*6}{down*2}{blue}score: ";sc
1022 ifsc>hsthenhs=sc
1024 print"{right*3}{down}{green}hi score: ";hs
1025 print"{down*8}{right*4}{reverse on}{blue}press any key{reverse off}" 
1030 geta$:ifa$=""then1030
1040 goto110

1190 rem sound
1200 fori=180to220step10
1210 pokeso,i
1215 nexti:pokeso,0
1220 return
