unit obraz;

   interface
      uses graph,objekty;
		procedure Olorios(a,b:string);
		procedure schopnosti(a,b,c,d,e:string);
		procedure kouzlicko(a:byte);
		procedure obrys(a,b,c:integer);
		procedure engine;
		procedure spodek;
		procedure diamanty(a:byte);

   implementation
var pomocna:byte;

procedure Olorios(a,b:string);
begin
     setcolor(15);
     SetTextStyle(TriplexFont, HorizDir, 1);
   	OutTextXY(375, 347, 'Level:'+' '+a);
     OutTextXY(375, 370, 'Zkusenost');
     OutTextXY(385, 400,b);
end;

procedure schopnosti(a,b,c,d,e:string);
begin
     setcolor(4);
    	SetTextStyle(TriplexFont, HorizDir, 1);
   if not(a='') then setcolor(14);
  	OutTextXY(208, 347,'1'+'.'+' '+a);
     setcolor(4);
   if not(b='') then setcolor(15);
     OutTextXY(208, 370,'2'+'.'+' '+b);
     setcolor(4);
   if not(c='') then setcolor(15);
     OutTextXY(208, 393,'3'+'.'+' '+c);
     setcolor(4);
   if not(d='') then setcolor(15);
     OutTextXY(208, 416,'4'+'.'+' '+d);
     setcolor(4);
   if not(e='') then setcolor(15);
     OutTextXY(208, 439,'5'+'.'+' '+e);
end;

procedure kouzlicko(a:byte);

begin
    case a of
        1: begin
            	for pomocna:=1 to 29 do begin
             		putpixel(143+pomocna,377+pomocna,4);
             		putpixel(173-pomocna,377+pomocna,4);
             	  if pomocna<29 then begin
             		putpixel(143+pomocna,378+pomocna,4);
             		putpixel(144+pomocna,377+pomocna,4);
                 	putpixel(172-pomocna,377+pomocna,4);
                    putpixel(173-pomocna,378+pomocna,4);
             	  end;
            	end;
	      end;
    end;
end;

procedure obrys(a,b,c:integer);
begin
  if c=1 then begin
    setcolor(lightblue);
    line(a,b,a+21,b);
    line(a,b,a,b+101);
    line(a,b+101,a+21,b+101);
    line(a+21,b+101,a+21,b);

    setcolor(blue);
    line(a-1,b-1,a+22,b-1);
    line(a-1,b-1,a-1,b+102);
    line(a-1,b+102,a+22,b+102);
    line(a+22,b+102,a+22,b-1);
  end

  else begin
      setcolor(lightblue);
      line(a,b,a+30,b);
      line(a,b,a,b+30);
      line(a,b+30,a+30,b+30);
      line(a+30,b+30,a+30,b);

      setcolor(blue);
      line(a-1,b-1,a+31,b-1);
      line(a-1,b-1,a-1,b+31);
      line(a-1,b+31,a+31,b+31);
      line(a+31,b+31,a+31,b-1);
   end;

end;

procedure engine;
begin
          setcolor(1);
     	line(13,0,623,0);
          line(13,0,13,getmaxy);
          line(13,getmaxy,623,getmaxy);
          line(623,0,623,getmaxy);
          setcolor(lightblue);
          line(14,1,623-1,1);
          line(14,1,14,300);line(14,302,14,getmaxy-1);
          line(14,getmaxy-1,623-1,getmaxy-1);
          line(623-1,getmaxy-1,623-1,302);line(623-1,300,623-1,1);
          line(14,302,623-1,302);

		setcolor(1);
 		line(13,301,623,301);
        {tmav‚ delici cary v obrysu}
          line(523,302,523,getmaxy);
          line(363,302,363,getmaxy);
          line(77,302,77,getmaxy);
          line(195,302,195,getmaxy);

          setcolor(lightblue);
          line(522,302,522,getmaxy-1);
          line(362,302,362,getmaxy-1);
          line(76,302,76,getmaxy-1);
          line(194,302,194,getmaxy-1);
          line(363,441,522,441);
    {kvuli prekresleny svetlymi carami}
          setcolor(blue);
          obrys(35,342,1);
          obrys(97,342,1);
          obrys(143,377,2);
          line(363,440,521,440);
   	{sede cary}
          setcolor(8);
          line(521,327,364,327);
          line(196,329,361,329);

          setcolor(blue);
end;

procedure diamanty;
var pocet:string;
begin
     diamant(401,465,blue,lightblue);
     str(a,pocet);
     OutTextXY(421,450,pocet);
end;


procedure spodek;
var health:1..100;
    hx,hy,i,o:1..480;
begin
     hx:=35;
     hy:=343;

     for o:=1 to 100 do begin
         for i:=1 to 20 do putpixel(hx+i,hy,2);
         hy:=hy+1;
     end;

     hx:=97;
     hy:=343;

     for o:=1 to 100 do begin
         for i:=1 to 20 do putpixel(hx+i,hy,1);
         hy:=hy+1;
     end;

     SetTextStyle(TriplexFont, HorizDir, 1);
   	OutTextXY(229, 303, 'Schopnosti');
     OutTextXY(412, 303, 'Ol¢rios');
   	setcolor(15);
     OutTextXY(529, 320, 'Bunker-1');
     diamanty(0);
     kouzlicko(1);
     schopnosti('Magie','Test1','Test2','','');
     Olorios('1','0');
end;




end.