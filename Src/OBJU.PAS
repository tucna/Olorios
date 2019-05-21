unit objekty;



interface
	uses graph;

     procedure diamant(Dx,Dy:integer;Dbar1,Dbar2:byte);

implementation

procedure diamant;
begin
   putpixel(Dx,Dy,Dbar1);
   putpixel(Dx-1,Dy-1,Dbar1);putpixel(Dx,Dy-1,Dbar2);putpixel(Dx+1,Dy-1,Dbar1);
   putpixel(Dx-2,Dy-2,Dbar1);putpixel(Dx-1,Dy-2,Dbar1);putpixel(Dx,Dy-2,Dbar1);putpixel(Dx+1,Dy-2,Dbar1);
   	putpixel(Dx+2,Dy-2,Dbar1);
   putpixel(Dx-3,Dy-3,Dbar2);putpixel(Dx-2,Dy-3,Dbar1);putpixel(Dx-1,Dy-3,Dbar1);putpixel(Dx,Dy-3,Dbar1);
   	putpixel(Dx+1,Dy-3,Dbar2);putpixel(Dx+2,Dy-3,Dbar1);putpixel(Dx+3,Dy-3,Dbar2);
   putpixel(Dx-3,Dy-4,Dbar2);putpixel(Dx-2,Dy-4,Dbar2);putpixel(Dx-1,Dy-4,Dbar1);
   	putpixel(Dx,Dy-4,Dbar1);putpixel(Dx+1,Dy-4,Dbar2);putpixel(Dx+2,Dy-4,Dbar1);putpixel(Dx+3,Dy-4,Dbar1);
   putpixel(Dx-3,Dy-5,Dbar2);putpixel(Dx-2,Dy-5,Dbar1);putpixel(Dx-1,Dy-5,Dbar2);putpixel(Dx,Dy-5,Dbar1);
   	putpixel(Dx+1,Dy-5,Dbar1);putpixel(Dx+2,Dy-5,Dbar1);putpixel(Dx+3,Dy-5,Dbar2);
   putpixel(Dx-2,Dy-6,Dbar2);putpixel(Dx-1,Dy-6,Dbar2);putpixel(Dx,Dy-6,Dbar2);putpixel(Dx+1,Dy-6,Dbar1);
   	putpixel(Dx+2,Dy-6,Dbar2);
   putpixel(Dx-1,Dy-7,Dbar1);putpixel(Dx,Dy-7,Dbar2);putpixel(Dx+1,Dy-7,Dbar1);
   putpixel(Dx,Dy-8,Dbar1);
end;


end.