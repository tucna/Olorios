uses crt,Graph,obraz,alien,objekty,dos,alien2;

{x=100,y=300}
{normal1r ----- prvni obrazek pri normalni pozici (stani), otoceni v pravo}

{Pozice Y Ÿervenìch Ÿar na mapØ (podlah) mus¡ bìt n sobkem pØti!!}

type
  Keys = (Up, Down, Left, Right);
const
  Options: array[Keys] of 0..127 = ($48, $50, $4B, $4D);
  zakaz=[#13,#10];
  prepis=['A','B','C','D','E','F','G'];
const
  Escape = 1; (* Scankod klavesy "Esc" *)
  Enter = 28;

var x,y,pozObjX,pozObjY:integer;
    klavesa:char;
    barva,barva1,pomocna,pomocna2,special1,special2,map:byte;
    bargo:char;
    soubor:text;
    vysl:string;
    pozBarX,pozBarY,BarvaBarZ,pomocna3: Integer;
    natoceni,aktiv:boolean;
    pole1,pole2:byte;
    zavorka: array[1..2,1..10] of integer;
    obra:array[1..100,1..100] of byte;
    docasne,cyklusS,cyklusR,pixel,sloupec,radek: integer;
    vykr3,vykr2,vykr1: integer;
    pozice,pozice2:byte;
    ret:string;
    objX,objY:integer;
    zebrik:array[1..2] of 0..500;

    diamantyPole:array[1..10] of 0..1;
    zprP: array[1..53,1..253] of byte;
    vlevo,vpravo,nahoru,zleva:boolean;

   Orig: procedure;
   Keyboard: set of 0..127;
   Code: Byte;

   chuze,vyskok:boolean;

procedure Obsluha; interrupt;
(** Zde je priklad obsluhy preruseni klavesnice. Rozhodl jsem se pro **)
(** pomoci mnoziny, protoze mnozina zabira v pameti mene mista nez pole. **)
begin
  Code := Port[$60]; (* cteni portu klavesnice *)
  if Code and $80 = 0 then (* neni-li nejvyssi bit nastaven... *)
    Keyboard := Keyboard + [Code and $7F] (* ...pridani kodu do mnoziny... *)
  else (* ...jinak... *)
    Keyboard := Keyboard - [Code and $7F]; (* ...odebrani kodu z mnoziny *)
  Port[$20] := $20; (* oznameni o konci preruseni pro radic preruseni *)
end;

procedure setrgb (barva, r, g, b : byte); assembler;
asm { procedura pro zmìnu jedné barvy }
mov al, [barva]
mov dx, 3c8h
out dx, al
inc dx
mov al, [r]; out dx, al
mov al, [g]; out dx, al
mov al, [b]; out dx, al
end;

procedure zprava(kec:string);
begin
   {nacteni pixelu}
   for vykr2:=1 to 53 do
     for vykr1:=1 to 253 do zprP[vykr2,vykr1]:=getpixel(68+vykr1,68+vykr2);
   {*********}
   SetFillStyle(XHatchFill,0);
   bar(69,69,321,121);

   setcolor(14);
   line(70,70,320,70);
   line(70,70,70,120);
   line(70,120,320,120);
   line(320,120,320,70);

   line(71,71,319,69);
   line(71,71,69,119);
   line(71,121,319,119);
   line(321,121,319,69);

   setcolor(4);
   outtextXY(110,84,kec);
  repeat
  until Enter in Keyboard;

   {zpetne vykresleni}
   for vykr2:=1 to 53 do for vykr1:=1 to 253 do putpixel(68+vykr1,68+vykr2,zprP[vykr2,vykr1]);
   {*********}
   diamant(550,245,7,7);
   setcolor(0);
   diamanty(0);
   setcolor(15);
   diamanty(1);
end;

procedure nakrObj(vysl:string;pozObjX,pozObjY:integer;pozice:byte);
var obj:text;
begin
 assign(obj,vysl);
 reset(obj);

 special1:=1;
 special2:=1;
 ret:='';

 repeat
       read(obj,bargo);
       if not(bargo='*') then ret:=ret+bargo;
 until bargo='*';

 val(ret,objX,objX);
 ret:='';

 repeat
       read(obj,bargo);
       if not(bargo=#13) then ret:=ret+bargo;
 until bargo=#13;

 val(ret,objY,objY);

 if pozice>0 then for special1:=2 to ((pozice*objY)+1) do readln(obj);

 special1:=1;

 repeat
   read(obj,bargo);
   if not(bargo in zakaz) then begin
   	val(bargo,pomocna3,pomocna3);
     if bargo in prepis then
   		case bargo of
        		'A': pomocna3:=10;
               'B': pomocna3:=11;
			'C': pomocna3:=12;
			'D': pomocna3:=13;
			'E': pomocna3:=14;
			'F': pomocna3:=15;
               'G': pomocna3:=5;
     	end;
   	obra[special2,special1]:=pomocna3;
   	special1:=special1+1;
   	if special1=(objX+1) then begin special1:=1;special2:=special2+1; end;
   end;
 until special2=(objY+1);

 for special1:=1 to objX do begin
 	for special2:=1 to objY do begin
{        if not(obra[special2,special1]=7) then}
        putpixel(pozObjX+special1,pozObjY+special2,obra[special2,special1]);
     end;
 end;
 close(obj);
end;

procedure objekt(pomocna:byte);
begin
	case pomocna of
        1: begin
	   	if not(pozice=4) then nakrObj('Objects\diamant.txt',576,225,pozice);

  	   	if x<454 then begin nakrObj('Enemies\vTas.txt',400,219,pozice2);aktiv:=TRUE; end
  			else begin nakrObj('Enemies\vStuj.txt',400,219,0);
                    if aktiv then begin
                     nakrObj('Enemies\vTas.txt',400,219,0);
		           aktiv:=FALSE;
				 pozice2:=0;
                    end;
			end;

  		if (pozice<3) then pozice:=pozice+1 else if not(pozice=4) then pozice:=0;  {!!!! Tady menit pocet snimku!!!}
  		if (pozice2<1) AND (aktiv) then pozice2:=pozice2+1;  {!!!! Tady menit pocet snimku!!!}
        	end;
       3: begin
	  		nakrObj('Objects\Zebrik.txt',406,152,0);
			zebrik[1]:=406;
			zebrik[2]:=151;
	  	end;
     end;
end;

procedure prekresli(a,b:byte); {b- slouzi k detekci m  li se obr zek jen nakreslit nebo prekreslit,nebo vymazat}
{1-normal1,2-krok1,3-krok2,4-krok3,5-krok4,6-krok5,7-normal2,8-otoc,9-skok1,10-skok2,11-skok22,12-skok23,13-skok3,14-Mkrok2,
 15-Mkrok3,16-Mkrok4}
begin
  if b<>2 then begin;
   barva:=0;barva1:=15;
   case a of
	1: if natoceni then normal1r(x,y,barva,barva1) else normal1l(x,y,barva,barva1);
     2: if natoceni then krok1r(x,y,barva,barva1) else krok1l(x,y,barva,barva1);
     3: if natoceni then krok2r(x,y,barva,barva1) else krok2l(x,y,barva,barva1);
  	4: if natoceni then krok3r(x,y,barva,barva1) else krok3l(x,y,barva,barva1);
     5: if natoceni then krok4r(x,y,barva,barva1) else krok4l(x,y,barva,barva1);
     6: if natoceni then krok5r(x,y,barva,barva1) else krok5l(x,y,barva,barva1);
     7: if natoceni then normal2r(x,y,barva,barva1) else normal2l(x,y,barva,barva1);
     8: if natoceni then OtocL(x,y,barva,barva1) else OtocL(x,y,barva,barva1);
     9: if natoceni then skok1ru(x,y,barva,barva1) else skok1lu(x,y,barva,barva1);
    10: if natoceni then skok2ru(x,y,barva,barva1) else skok2lu(x,y,barva,barva1);
    11: if natoceni then skok22ru(x,y,barva,barva1) else skok22lu(x,y,barva,barva1);
    12: if natoceni then skok23ru(x,y,barva,barva1) else skok23lu(x,y,barva,barva1);
    13: if natoceni then skok3ru(x,y,barva,barva1) else skok3lu(x,y,barva,barva1);
{    14: if natoceni then Mkrok2r(x,y,barva,barva1) else Mkrok2r(x,y,barva,barva1);
    15: if natoceni then Mkrok3r(x,y,barva,barva1) else Mkrok3r(x,y,barva,barva1);
    16: if natoceni then Mkrok4r(x,y,barva,barva1,barvaM,barva1M,barva2M)
    		else Mkrok4r(x,y,barva,barva1,barvaM,barva1M,barva2M);}
    17: if natoceni then otocRu(x,y,barva,barva1) else otocLu(x,y,barva,barva1);
    18: if natoceni then splh1Ru(x,y,barva,barva1) else splh1ru(x,y,barva,barva1);
    19: if natoceni then splh2Ru(x,y,barva,barva1) else splh2ru(x,y,barva,barva1);
   end;
  end;

  delay(50);
  objekt(map);

  if b<>1 then begin;
   barva:=7;barva1:=7;
   case a of
  	1: if natoceni then normal1r(x,y,barva,barva1) else normal1l(x,y,barva,barva1);
     2: if natoceni then krok1r(x,y,barva,barva1) else krok1l(x,y,barva,barva1);
  	3: if natoceni then krok2r(x,y,barva,barva1) else krok2l(x,y,barva,barva1);
  	4: if natoceni then krok3r(x,y,barva,barva1) else krok3l(x,y,barva,barva1);
     5: if natoceni then krok4r(x,y,barva,barva1) else krok4l(x,y,barva,barva1);
     6: if natoceni then krok5r(x,y,barva,barva1) else krok5l(x,y,barva,barva1);
     7: if natoceni then normal2r(x,y,barva,barva1) else normal2l(x,y,barva,barva1);
     8: if natoceni then OtocL(x,y,barva,barva1) else OtocL(x,y,barva,barva1);
     9: if natoceni then skok1ru(x,y,barva,barva1) else skok1lu(x,y,barva,barva1);
    10: if natoceni then skok2ru(x,y,barva,barva1) else skok2lu(x,y,barva,barva1);
    11: if natoceni then skok22ru(x,y,barva,barva1) else skok22lu(x,y,barva,barva1);
    12: if natoceni then skok23ru(x,y,barva,barva1) else skok23lu(x,y,barva,barva1);
    13: if natoceni then skok3ru(x,y,barva,barva1) else skok3lu(x,y,barva,barva1);
{    14: if natoceni then Mkrok2r(x,y,barva,barva1) else Mkrok2r(x,y,barva,barva1);
    15: if natoceni then Mkrok3r(x,y,barva,barva1) else Mkrok3r(x,y,barva,barva1);
    16: if natoceni then Mkrok4r(x,y,barva,barva1,barvaM,barva1M,barva2M)
    		else Mkrok4r(x,y,barva,barva1,barvaM,barva1M,barva2M);}
    17: if natoceni then otocRu(x,y,barva,barva1) else otocLu(x,y,barva,barva1);
    18: if natoceni then splh1Ru(x,y,barva,barva1) else splh1ru(x,y,barva,barva1);
    19: if natoceni then splh2Ru(x,y,barva,barva1) else splh2ru(x,y,barva,barva1);

   end;
   barva:=0;barva1:=15;
  end;
end;

{procedure tasMec;
begin
     prekresli(2,0);
     prekresli(14,0);
     prekresli(15,0);
     Mkrok4r(x,y,barva,barva1,barvaM,barva1M,barva2M);
     readkey;
end;}

procedure nakresli;
begin
 for vykr1:=1 to cyklusS do begin
   vykr2:=1;
   repeat
  	docasne:=zavorka[1,vykr2];
  	for vykr3:=1 to docasne do begin
     	putpixel(pozBarX,pozBarY,zavorka[2,vykr2]);
     	pozBarX:=pozBarX+1;
     	if pozBarX>621 then begin pozBarX:=15;pozBarY:=pozBarY+1; end;
  	end;
  	vykr2:=vykr2+1;
   until zavorka[1,vykr2]=0;
 end;
end;

procedure vykresli(a:string);
const vycet=['*', '(' , ')' , ';' , ','];
begin
 vysl:='';
 pozBarX:=15;
 pozBarY:=2;
 pole1:=1;
 pole2:=1;
 vykr2:=1;
 for vykr3:=1 to 10 do begin zavorka[1,vykr3]:=0;zavorka[2,vykr3]:=0; end;

 assign(soubor,'Maps\'+a);
 reset(soubor);

 repeat
  repeat
   read(soubor,bargo);
   if not (bargo in vycet) then vysl:=vysl+bargo;
  until (bargo='*') or (eof(soubor));
  val(vysl,cyklusS,cyklusS);
  vysl:='';

 repeat
  repeat
   read(soubor,bargo);
   if not (bargo in vycet) then vysl:=vysl+bargo;
  until (bargo='*') or (eof(soubor));
  val(vysl,cyklusR,cyklusR);
  vysl:='';
  repeat
 	read(soubor,bargo);
 	if not (bargo in vycet) then vysl:=vysl+bargo;
  until (bargo=',') or (bargo=')') or (eof(soubor));
  val(vysl,pixel,pixel);
  vysl:='';
  zavorka[pole1,pole2]:=cyklusR;
  zavorka[pole1+1,pole2]:=pixel;
  pole2:=pole2+1;
 until (bargo=')') or (eof(soubor));

 nakresli;
 for vykr3:=1 to 10 do begin zavorka[1,vykr3]:=0;zavorka[2,vykr3]:=0; end;
 pole2:=1;

 until eof(soubor);
 close(soubor);
end;

procedure mapa(a:byte);
var
	vys,b:string;
begin
	vys:='';
     str(a,b);
     vys:='mapa'+b+'.txt';
     vykresli(vys);
end;

procedure prechod(smer:byte);
begin
  if (smer=4) OR (smer=41) then begin
	if ((getpixel(x-19,y)=lightblue) AND (natoceni=FALSE)) OR ((getpixel(x+1,y)=lightblue) AND (natoceni)) then
                 case map of
                   2: begin
                         map:=3;
                         x:=613;
                         mapa(map);
                         zleva:=TRUE;
                      end;
                   4: begin
                         map:=2;
                         x:=613;
                         mapa(map);
                         zleva:=TRUE;
                      end;
                 end;
     end;
  if (smer=6) OR (smer=61) then begin
	if ((getpixel(x+19,y)=lightblue) AND (natoceni)) OR ((getpixel(x-1,y)=lightblue) AND (natoceni=FALSE)) then
                 case map of
                   2: begin
                         map:=4;
                         x:=23;
                         mapa(map);
                      end;
                   3: begin
                         map:=2;
                         x:=23;
                         mapa(map);
                      end;
                 end;
  end;
end;

procedure splh;
begin
      x:=zebrik[1]-18;
      prekresli(18,1);
      delay(200);
      prekresli(18,2);
      x:=zebrik[1]-13;
      y:=y-5;
      repeat
          prekresli(13,1);
		if options[Up] in keyboard then begin
               prekresli(13,2);
               x:=x-2;
			prekresli(18,1);
               delay(200);
               prekresli(18,2);
               prekresli(19,1);
               delay(200);
               prekresli(19,2);
               x:=X+2;
               y:=y-6;
		end;
      until options[Left] in keyboard;
end;

function jentak(druhpohybu:byte):boolean;
begin
 case druhpohybu of
    6: begin
               if (zebrik[1]-23=x) AND (natoceni) then begin
                    splh;
               end;
    			if getpixel(x+19,y)=4 then begin jentak:=TRUE;exit; end
				else jentak:=FALSE;
               prechod(6);
       end;
    4: begin
    			if getpixel(x-19,y)=4 then begin jentak:=TRUE;exit; end
				else jentak:=FALSE;
               prechod(4);
       end;
   61 :begin     {prav  pýi skoku}
         if natoceni then begin
    			if (getpixel(x+19,y)=4) OR (getpixel(x+19,y-29)=4) then begin jentak:=TRUE;exit; end
				else jentak:=FALSE;
               prechod(6);
         end;
         if natoceni=FALSE then begin
    			if (getpixel(x+9,y)=4) OR (getpixel(x+9,y-29)=4) then
				begin
					jentak:=TRUE;
                         x:=x-10;
                         prekresli(17,0);
                         natoceni:=TRUE;
					exit;
				end
				else jentak:=FALSE;
               prechod(61);
         end;
       end;

   41 : begin     {lev  pýi skoku}
         if natoceni=FALSE then begin
    			if (getpixel(x-19,y)=4) OR (getpixel(x-19,y-29)=4) then begin jentak:=TRUE;exit; end
				else jentak:=FALSE;
               prechod(41);
         end;
	    if natoceni then begin
    			if (getpixel(x-9,y)=4) OR (getpixel(x-9,y-29)=4) then
				begin
					jentak:=TRUE;
                         x:=x+10;
                         prekresli(17,0);
                         natoceni:=FALSE;
					exit;
				end
				else jentak:=FALSE;
               prechod(4);
         end;
       end;
 end;
end;

function sebral:boolean;
begin
      if (map=1) AND (x>=563) AND (y>=225) AND (diamantyPole[1]=0) then
                   begin
                         if chuze then prekresli(6,1);
                         if vyskok then prekresli(13,1);
			    		zprava('Sebral jsi diamant');
                         nakrObj('Objects\diamant.txt',576,225,4);
                         diamantyPole[1]:=1;
                         pozice:=4;
                         sebral:=TRUE;
                         exit;
                   end;
      sebral:=FALSE;
end;

procedure pad;
begin
    repeat
      if (Options[Left] in Keyboard) AND (jentak(41)=FALSE) then x:=x-10;
	 if (Options[Right] in Keyboard) AND (jentak(61)=FALSE) then x:=x+10;
      y:=y+5;
      prekresli(13,0);
      if getpixel(x,y+1)=1 then
                 case map of
                   1: begin
                         map:=2;
                         y:=30;
                         mapa(map);
                         continue;
                      end;
                 end;
      if ((getpixel(x+10,y+6)=4) AND (getpixel(x+1,y)=lightblue) AND (natoceni))
	 	OR ((getpixel(x+10,y+1)=4) AND (getpixel(x-9,y)=lightblue) AND (natoceni)) then x:=x+10;
	 if (getpixel(x+10,y+1)=4) AND (getpixel(x+1,y)=lightblue) AND (natoceni) then x:=x+20;
      if ((getpixel(x-10,y+6)=4) AND (getpixel(x-1,y)=lightblue) AND (natoceni=FALSE))
	 	OR ((getpixel(x-10,y+1)=4) AND (getpixel(x+9,y)=lightblue) AND (natoceni=FALSE)) then x:=x-10;
      if (getpixel(x-10,y+1)=4) AND (getpixel(x-1,y)=lightblue) AND (natoceni=FALSE) then x:=x-20;
      if (getpixel(x-1,y)=4) AND (getpixel(x-2,y)=7) then x:=x-10;

      if (getpixel(x+11,y+1)=4) AND (natoceni) then exit;
      if (getpixel(x-1,y+1)=4) AND (natoceni=FALSE) then exit;

      if sebral then prekresli(13,2);

    until y=300;
end;

procedure otocka;
begin
    if (natoceni)  then begin x:=x+2;prekresli(8,0);x:=x+8;end;
    if (natoceni=FALSE)  then begin x:=x-10;prekresli(8,0);	end;
end;

procedure skok;
	begin
          prekresli(1,0);
          prekresli(2,0);
          prekresli(9,0);
          prekresli(10,0);
          prekresli(11,0);
          y:=y-5;
          prekresli(12,0);
          for pomocna2:=1 to 8 do begin
             if (Options[Left] in Keyboard) AND (jentak(41)=FALSE) then x:=x-10;
		   if (Options[Right] in Keyboard) AND (jentak(61)=FALSE) then x:=x+10;
             prekresli(13,0);
             y:=y-5;
	     end;
        pad;
        prekresli(12,0);
        prekresli(10,0);
        prekresli(9,0);
        prekresli(2,0);
   end;

procedure pohyb;
	begin
 			prekresli(1,0);
 			prekresli(2,0);
 			prekresli(3,0);
 			prekresli(4,0);
 			prekresli(5,0);
 			prekresli(6,0);
               if natoceni then x:=x+10 else x:=x-10;
               if sebral then prekresli(6,2);
	end;


procedure stujFirst;
begin
end;

{procedure stujSecond;
begin
     if keypressed then begin klavesa:=readkey;
            if (klavesa='6') AND (jentak(6)=FALSE) then begin prekresli(7,2);
		  		otocka;if otoc=FALSE then pohyb;otoc:=FALSE;prekresli(7,1);
		  	end;
		  if klavesa='8' then begin prekresli(7,2);skok;prekresli(1,1);end;
            if (klavesa='4') AND (jentak(4)=FALSE) then begin prekresli(7,2);
            		otocka;if otoc=FALSE then pohyb;otoc:=FALSE;prekresli(1,1);
            	end;
            if klavesa='f' then begin
                    prekresli(7,2);if mec=FALSE then tasMec else schovMec;
            	end;
	end;
end;

     }
procedure stuj;
begin
     prekresli(1,1);
     delay(100);
     prekresli(1,2);
    	prekresli(7,1);
     delay(100);
     prekresli(7,2);
end;
{				**********funkce programu************
 promena 'vypocti' nabyva hodnoty 1, je li nuta klavesa tak 0. Jestli je
 0 potom se obrazek normal2 neprehraje. Promena nabyva 1 pred koncem cyklu
 a 0 po nuti klavesy.
}
var
	f:boolean;
	Gd, Gm:integer;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, '');
 if GraphResult <> grOk then Halt(1);
 engine;
 spodek;
 x:=503;
 y:=250;
 barva:=0;
 barva1:=15;
 natoceni:=FALSE;
 map:=1;
 mapa(map);
 pozice:=0;
 pozice2:=0;
 zebrik[1]:=0;
 zebrik[2]:=0;

 setRGB(5,0,0,30);

{ Bar(544,400,600,450);}
 nakrObj('Objects\bunker1.txt',544,390,pozice);

 Keyboard := []; (* inicializace mnoziny *)
 GetIntVec($09, @Orig); (* ulozeni puvodniho vektoru *)
 SetIntVec($09, Addr(Obsluha)); (* nastaveni vlastni obsluhy *)

repeat
      F:=FALSE;
      	repeat
               if (getpixel(x+1,y+1)=4) AND (getpixel(x,y+1)=7) AND (natoceni=FALSE) then begin x:=x-10;pad; end;
               if (getpixel(x+11,y+1)=4) AND (getpixel(x+10,y+1)=7) AND (natoceni) then begin x:=x-10;pad; end;

      		if (Options[Left] in Keyboard) AND (not(Options[Right] in keyboard)) then
      		begin
                    if jentak(4)=FALSE then chuze:=TRUE;
                    F:=true;
                    if natoceni then begin otocka; if jentak(4)=FALSE then chuze:=TRUE;end;
                    natoceni:=FALSE;
      		end;
               if (Options[Right] in Keyboard) AND (zleva=FALSE) AND (not(Options[Left] in keyboard)) then
      		begin
                    if jentak(6)=FALSE then chuze:=TRUE;
        			F := True;
                    if natoceni=FALSE then begin otocka;if jentak(6)=FALSE then chuze:=TRUE; end;
                    natoceni:=TRUE;
      		end;
               if Options[Up] in Keyboard then
      		begin
                    vyskok:=TRUE;
        			F := True;
      		end;
      		if Escape in Keyboard then break;
			if F=False then stuj;
          until F;
      if chuze then pohyb;
      if vyskok then skok;

      if chuze=FALSE then stuj;

      chuze:=FALSE;
      vyskok:=FALSE;
      zleva:=FALSE;
until Escape in Keyboard;
 SetIntVec($09, @Orig); (* obnoveni puvodniho vektoru preruseni !!!!! *)
 CloseGraph;
end.
