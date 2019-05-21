unit alien2;

	interface
       uses graph;
	     procedure otocLu(x,y,barva,barva1:integer);
	     procedure otocRu(x,y,barva,barva1:integer);
          procedure splh1ru(x,y,barva,barva1:integer);
          procedure splh2ru(x,y,barva,barva1:integer);


     implementation
 procedure otocLu;
   begin
 {leva noha}
 putpixel(x+2,y,barva);putpixel(x+2+1,y,barva);putpixel(x+2+2,y,barva);putpixel(x+2+3,y,barva);putpixel(x+2+4,y,barva);
 putpixel(x+2,y-1,barva);putpixel(x+2+1,y-1,barva);putpixel(x+2+2,y-1,barva);putpixel(x+2+3,y-1,barva);
 	putpixel(x+2+4,y-1,barva);
 putpixel(x+2+1,y-2,barva);putpixel(x+2+2,y-2,barva);putpixel(x+2+3,y-2,barva);
 putpixel(x+2+2,y-3,barva);
 putpixel(x+2+2,y-4,barva);
 putpixel(x+2+2,y-5,barva);putpixel(x+2+1,y-5,barva);
 PutPixel(x+3,y-6,barva);
 PutPixel(x+3,y-7,barva);PutPixel(x+4,y-7,barva);
 PutPixel(x+5,y-8,barva);
 PutPixel(x+6,y-9,barva);
 {*******************}

 {prava noha}
 PutPixel(x-1+7,y-9,barva);
 PutPixel(x-1+8,y-8,barva);
 PutPixel(x-1+9,y-7,barva);PutPixel(x-1+10,y-7,barva);
 PutPixel(x-1+10,y-6,barva);
 PutPixel(x-1+10,y-5,barva);PutPixel(x-1+11,y-5,barva);
 PutPixel(x-1+11,y-4,barva);
 PutPixel(x-1+11,y-3,barva);
 PutPixel(x-1+10,y-2,barva);PutPixel(x-1+11,y-2,barva);PutPixel(x-1+12,y-2,barva);
 PutPixel(x-1+9,y-1,barva);PutPixel(x-1+10,y-1,barva);PutPixel(x-1+11,y-1,barva);PutPixel(x-1+12,y-1,barva);
 	PutPixel(x-1+13,y-1,barva);
 PutPixel(x-1+9,y,barva);PutPixel(x-1+10,y,barva);PutPixel(x-1+11,y,barva);PutPixel(x-1+12,y,barva);PutPixel(x-1+13,y,barva);
 {****************}

 {telo}
 PutPixel(x+6,y-10,barva);PutPixel(x+7,y-10,barva);
 PutPixel(x+6,y-11,barva);PutPixel(x+7,y-11,barva);
 PutPixel(x+6,y-12,barva);PutPixel(x+7,y-12,barva);
 PutPixel(x+6,y-13,barva);PutPixel(x+7,y-13,barva);
 PutPixel(x+6,y-14,barva);PutPixel(x+7,y-14,barva);
 PutPixel(x+6,y-15,barva);PutPixel(x+7,y-15,barva);
 PutPixel(x+6,y-16,barva);PutPixel(x+7,y-16,barva);
 {*********************}

 {leva ruka}
 PutPixel(x+6,y-17,barva);PutPixel(x+5,y-17,barva);
 PutPixel(x+4,y-18,barva);
 PutPixel(x+4,y-19,barva);
 PutPixel(x+4,y-24,barva);
 PutPixel(x+4,y-25,barva);
 PutPixel(x+3,y-26,barva);
 PutPixel(x+3,y-27,barva);
 PutPixel(x+3,y-28,barva);
 PutPixel(x+2,y-29,barva);PutPixel(x+4,y-29,barva);
 {**********************}

 {prava ruka}
 PutPixel(x+7,y-17,barva);PutPixel(x+8,y-17,barva);
 PutPixel(x+9,y-18,barva);
 PutPixel(x+9,y-19,barva);
 PutPixel(x+9,y-24,barva);
 PutPixel(x+9,y-25,barva);
 PutPixel(x+10,y-26,barva);
 PutPixel(x+10,y-27,barva);
 PutPixel(x+10,y-28,barva);
 PutPixel(x+11,y-29,barva);PutPixel(x+9,y-29,barva);
 {*********************}

 {hlava}
 PutPixel(x+6,y-18,barva);PutPixel(x+7,y-18,barva);
 PutPixel(x+5,y-19,barva);PutPixel(x+6,y-19,barva);PutPixel(x+7,y-19,barva);PutPixel(x+8,y-19,barva);
 PutPixel(x+4,y-20,barva);PutPixel(x+5,y-20,barva);PutPixel(x+6,y-20,barva);PutPixel(x+7,y-20,barva);PutPixel(x+8,y-20,barva);
 	PutPixel(x+9,y-20,barva);
 PutPixel(x+3,y-21,barva);PutPixel(x+4,y-21,barva);PutPixel(x+5,y-21,barva);PutPixel(x+6,y-21,barva);PutPixel(x+7,y-21,barva);
 	PutPixel(x+8,y-21,barva);PutPixel(x+9,y-21,barva);PutPixel(x+10,y-21,barva);
 PutPixel(x+3,y-22,barva);PutPixel(x+4,y-22,barva);PutPixel(x+5,y-22,barva);PutPixel(x+6,y-22,barva);PutPixel(x+7,y-22,barva1);
 	PutPixel(x+8,y-22,barva1);PutPixel(x+9,y-22,barva);PutPixel(x+10,y-22,barva);
 PutPixel(x+4,y-23,barva);PutPixel(x+5,y-23,barva);PutPixel(x+6,y-23,barva);PutPixel(x+7,y-23,barva1);PutPixel(x+8,y-23,barva);
 	PutPixel(x+9,y-23,barva);
 PutPixel(x+5,y-24,barva);PutPixel(x+6,y-24,barva);PutPixel(x+7,y-24,barva);PutPixel(x+8,y-24,barva);
 PutPixel(x+6,y-25,barva);PutPixel(x+7,y-25,barva);

 PutPixel(x+4,y-22,barva1);PutPixel(x+5,y-22,barva1);PutPixel(x+5,y-23,barva1);
 {*******************}
     end;

 procedure otocRu;
   begin
 {leva noha}
 putpixel(x-2,y,barva);putpixel(x-3,y,barva);putpixel(x-4,y,barva);putpixel(x-5,y,barva);putpixel(x-6,y,barva);
 putpixel(x-2,y-1,barva);putpixel(x-3,y-1,barva);putpixel(x-4,y-1,barva);putpixel(x-5,y-1,barva);
 	putpixel(x-6,y-1,barva);
 putpixel(x-3,y-2,barva);putpixel(x-4,y-2,barva);putpixel(x-5,y-2,barva);
 putpixel(x-4,y-3,barva);
 putpixel(x-4,y-4,barva);
 putpixel(x-4,y-5,barva);putpixel(x-3,y-5,barva);
 PutPixel(x-3,y-6,barva);
 PutPixel(x-3,y-7,barva);PutPixel(x-4,y-7,barva);
 PutPixel(x-5,y-8,barva);
 PutPixel(x-6,y-9,barva);
 {*******************}

 {prava noha}
 PutPixel(x-6,y-9,barva);
 PutPixel(x-7,y-8,barva);
 PutPixel(x-8,y-7,barva);PutPixel(x-9,y-7,barva);
 PutPixel(x-9,y-6,barva);
 PutPixel(x-9,y-5,barva);PutPixel(x-10,y-5,barva);
 PutPixel(x-10,y-4,barva);
 PutPixel(x-10,y-3,barva);
 PutPixel(x-9,y-2,barva);PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);
 PutPixel(x-8,y-1,barva);PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);
 	PutPixel(x-12,y-1,barva);
 PutPixel(x-8,y,barva);PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);
 {****************}

 {telo}
 PutPixel(x-6,y-10,barva);PutPixel(x-7,y-10,barva);
 PutPixel(x-6,y-11,barva);PutPixel(x-7,y-11,barva);
 PutPixel(x-6,y-12,barva);PutPixel(x-7,y-12,barva);
 PutPixel(x-6,y-13,barva);PutPixel(x-7,y-13,barva);
 PutPixel(x-6,y-14,barva);PutPixel(x-7,y-14,barva);
 PutPixel(x-6,y-15,barva);PutPixel(x-7,y-15,barva);
 PutPixel(x-6,y-16,barva);PutPixel(x-7,y-16,barva);
 {*********************}

 {leva ruka}
 PutPixel(x-6,y-17,barva);PutPixel(x-5,y-17,barva);
 PutPixel(x-4,y-18,barva);
 PutPixel(x-4,y-19,barva);
 PutPixel(x-4,y-24,barva);
 PutPixel(x-4,y-25,barva);
 PutPixel(x-3,y-26,barva);
 PutPixel(x-3,y-27,barva);
 PutPixel(x-3,y-28,barva);
 PutPixel(x-2,y-29,barva);PutPixel(x-4,y-29,barva);
 {**********************}

 {prava ruka}
 PutPixel(x-7,y-17,barva);PutPixel(x-8,y-17,barva);
 PutPixel(x-9,y-18,barva);
 PutPixel(x-9,y-19,barva);
 PutPixel(x-9,y-24,barva);
 PutPixel(x-9,y-25,barva);
 PutPixel(x-10,y-26,barva);
 PutPixel(x-10,y-27,barva);
 PutPixel(x-10,y-28,barva);
 PutPixel(x-11,y-29,barva);PutPixel(x-9,y-29,barva);
 {*********************}

 {hlava}
 PutPixel(x-6,y-18,barva);PutPixel(x-7,y-18,barva);
 PutPixel(x-5,y-19,barva);PutPixel(x-6,y-19,barva);PutPixel(x-7,y-19,barva);PutPixel(x-8,y-19,barva);
 PutPixel(x-4,y-20,barva);PutPixel(x-5,y-20,barva);PutPixel(x-6,y-20,barva);PutPixel(x-7,y-20,barva);PutPixel(x-8,y-20,barva);
 	PutPixel(x-9,y-20,barva);
 PutPixel(x-3,y-21,barva);PutPixel(x-4,y-21,barva);PutPixel(x-5,y-21,barva);PutPixel(x-6,y-21,barva);PutPixel(x-7,y-21,barva);
 	PutPixel(x-8,y-21,barva);PutPixel(x-9,y-21,barva);PutPixel(x-10,y-21,barva);
 PutPixel(x-3,y-22,barva);PutPixel(x-4,y-22,barva);PutPixel(x-5,y-22,barva);PutPixel(x-6,y-22,barva);PutPixel(x-7,y-22,barva1);
 	PutPixel(x-8,y-22,barva1);PutPixel(x-9,y-22,barva);PutPixel(x-10,y-22,barva);
 PutPixel(x-4,y-23,barva);PutPixel(x-5,y-23,barva);PutPixel(x-6,y-23,barva);PutPixel(x-7,y-23,barva1);PutPixel(x-8,y-23,barva);
 	PutPixel(x-9,y-23,barva);
 PutPixel(x-5,y-24,barva);PutPixel(x-6,y-24,barva);PutPixel(x-7,y-24,barva);PutPixel(x-8,y-24,barva);
 PutPixel(x-6,y-25,barva);PutPixel(x-7,y-25,barva);

 PutPixel(x-4,y-22,barva1);PutPixel(x-5,y-22,barva1);PutPixel(x-5,y-23,barva1);
 {*******************}
     end;

procedure splh1ru;
	begin

 {prava noha}
 x:=x+4;
 y:=y-3;
 PutPixel(x+7,y-8,barva);PutPixel(x+8,y-8,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva); PutPixel(x+6,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 y:=y-3;
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 y:=y+3;
 x:=x-4;
 y:=y+3;
 {****************}

 {prava noha+leva noha}
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 PutPixel(x+10,y-3,barva);PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-4,barva);PutPixel(x+11,y-4,barva);
 PutPixel(x+9,y-5,barva); PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+9,y-6,barva);PutPixel(x+10,y-6,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+8,y-8,barva);PutPixel(x+9,y-8,barva);
 PutPixel(x+8,y-9,barva);PutPixel(x+9,y-9,barva);
 {*******************}

 {telo}
 PutPixel(x+8,y-10,barva);PutPixel(x+9,y-10,barva);
 PutPixel(x+8,y-11,barva);PutPixel(x+9,y-11,barva);
 PutPixel(x+8,y-12,barva);PutPixel(x+9,y-12,barva);
 PutPixel(x+8,y-13,barva);PutPixel(x+9,y-13,barva);
 PutPixel(x+8,y-14,barva);PutPixel(x+9,y-14,barva);
 PutPixel(x+8,y-15,barva);PutPixel(x+9,y-15,barva);
 PutPixel(x+8,y-16,barva);PutPixel(x+9,y-16,barva);
 PutPixel(x+8,y-17,barva);PutPixel(x+9,y-17,barva);
 {*********************}

 {prava ruka+leva ruka}
 x:=x+2;
 PutPixel(x+8,y-17,barva);PutPixel(x+9,y-17,barva);
 PutPixel(X+9,Y-18,barva);
 PutPixel(x+10,y-19,barva);
 PutPixel(x+11,y-20,barva);
 PutPixel(x+11,y-21,barva);PutPixel(x+12,y-21,barva);
 PutPixel(x+12,y-22,barva);
 PutPixel(x+12,y-22,barva);
 PutPixel(x+12,y-22,barva);
 PutPixel(x+13,y-23,barva);
 x:=x+2;
 PutPixel(x+13,y-24,barva);PutPixel(x+12,y-24,barva);
 PutPixel(x+13,y-25,barva);
 PutPixel(x+13,y-26,barva);PutPixel(x+14,y-26,barva);
 PutPixel(x+13,y-27,barva);PutPixel(x+14,y-27,barva);
 PutPixel(x+13,y-28,barva);PutPixel(x+15,y-28,barva);
 PutPixel(x+12,y-29,barva);PutPixel(x+14,y-29,barva);
 x:=x-2;
 {****************}

 {hlava}
 PutPixel(x+6,y-18,barva);PutPixel(x+7,y-18,barva);
 PutPixel(x+5,y-19,barva);PutPixel(x+6,y-19,barva);PutPixel(x+7,y-19,barva);PutPixel(x+8,y-19,barva);
 PutPixel(x+4,y-20,barva);PutPixel(x+5,y-20,barva);PutPixel(x+6,y-20,barva);PutPixel(x+7,y-20,barva);PutPixel(x+8,y-20,barva);
 	PutPixel(x+9,y-20,barva);
 PutPixel(x+3,y-21,barva);PutPixel(x+4,y-21,barva);PutPixel(x+5,y-21,barva);PutPixel(x+6,y-21,barva);PutPixel(x+7,y-21,barva);
 	PutPixel(x+8,y-21,barva);PutPixel(x+9,y-21,barva);PutPixel(x+10,y-21,barva);
 PutPixel(x+3,y-22,barva);PutPixel(x+4,y-22,barva);PutPixel(x+5,y-22,barva);PutPixel(x+6,y-22,barva);PutPixel(x+7,y-22,barva1);
 	PutPixel(x+8,y-22,barva1);PutPixel(x+9,y-22,barva);PutPixel(x+10,y-22,barva);
 PutPixel(x+4,y-23,barva);PutPixel(x+5,y-23,barva);PutPixel(x+6,y-23,barva);PutPixel(x+7,y-23,barva1);PutPixel(x+8,y-23,barva);
 	PutPixel(x+9,y-23,barva);
 PutPixel(x+5,y-24,barva);PutPixel(x+6,y-24,barva);PutPixel(x+7,y-24,barva);PutPixel(x+8,y-24,barva);
 PutPixel(x+6,y-25,barva);PutPixel(x+7,y-25,barva);
 {*******************}
end;

procedure splh2ru;
	begin

 {prava noha}
 x:=x+4;
 y:=y-3;
 PutPixel(x+7,y-8,barva);PutPixel(x+8,y-8,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva); PutPixel(x+6,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 y:=y-3;
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 y:=y+3;
 x:=x-4;
 y:=y+3;
 {****************}

 {prava noha+leva noha}
 x:=x-2;
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 x:=x+2;
 PutPixel(x+10,y-3,barva);PutPixel(x+9,y-3,barva);
 PutPixel(x+10,y-4,barva);PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-5,barva);PutPixel(x+10,y-5,barva);
 PutPixel(x+9,y-6,barva);PutPixel(x+10,y-6,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+8,y-8,barva);PutPixel(x+9,y-8,barva);
 PutPixel(x+8,y-9,barva);PutPixel(x+9,y-9,barva);
 {*******************}

 {telo}
 PutPixel(x+8,y-10,barva);PutPixel(x+9,y-10,barva);
 PutPixel(x+8,y-11,barva);PutPixel(x+9,y-11,barva);
 PutPixel(x+8,y-12,barva);PutPixel(x+9,y-12,barva);
 PutPixel(x+8,y-13,barva);PutPixel(x+9,y-13,barva);
 PutPixel(x+8,y-14,barva);PutPixel(x+9,y-14,barva);
 PutPixel(x+8,y-15,barva);PutPixel(x+9,y-15,barva);
 PutPixel(x+8,y-16,barva);PutPixel(x+9,y-16,barva);
 PutPixel(x+8,y-17,barva);PutPixel(x+9,y-17,barva);
 {*********************}

 {prava ruka+leva ruka}
 x:=x+2;
 PutPixel(x+8,y-17,barva);PutPixel(x+9,y-17,barva);
 PutPixel(X+9,Y-18,barva);
 PutPixel(x+10,y-19,barva);
 PutPixel(x+11,y-20,barva);
 PutPixel(x+11,y-21,barva);PutPixel(x+12,y-21,barva);
 PutPixel(x+12,y-22,barva);
 PutPixel(x+12,y-22,barva);
 PutPixel(x+12,y-22,barva);
 PutPixel(x+13,y-23,barva);
 PutPixel(x+13,y-24,barva);PutPixel(x+14,y-24,barva);
 PutPixel(x+13,y-25,barva);PutPixel(x+14,y-25,barva);
 PutPixel(x+13,y-26,barva);PutPixel(x+14,y-26,barva);
 PutPixel(x+13,y-27,barva);PutPixel(x+14,y-27,barva);
 PutPixel(x+13,y-28,barva);PutPixel(x+15,y-28,barva);
 PutPixel(x+12,y-29,barva);PutPixel(x+14,y-29,barva);
 {****************}

 {hlava}
 PutPixel(x+6,y-18,barva);PutPixel(x+7,y-18,barva);
 PutPixel(x+5,y-19,barva);PutPixel(x+6,y-19,barva);PutPixel(x+7,y-19,barva);PutPixel(x+8,y-19,barva);
 PutPixel(x+4,y-20,barva);PutPixel(x+5,y-20,barva);PutPixel(x+6,y-20,barva);PutPixel(x+7,y-20,barva);PutPixel(x+8,y-20,barva);
 	PutPixel(x+9,y-20,barva);
 PutPixel(x+3,y-21,barva);PutPixel(x+4,y-21,barva);PutPixel(x+5,y-21,barva);PutPixel(x+6,y-21,barva);PutPixel(x+7,y-21,barva);
 	PutPixel(x+8,y-21,barva);PutPixel(x+9,y-21,barva);PutPixel(x+10,y-21,barva);
 PutPixel(x+3,y-22,barva);PutPixel(x+4,y-22,barva);PutPixel(x+5,y-22,barva);PutPixel(x+6,y-22,barva);PutPixel(x+7,y-22,barva1);
 	PutPixel(x+8,y-22,barva1);PutPixel(x+9,y-22,barva);PutPixel(x+10,y-22,barva);
 PutPixel(x+4,y-23,barva);PutPixel(x+5,y-23,barva);PutPixel(x+6,y-23,barva);PutPixel(x+7,y-23,barva1);PutPixel(x+8,y-23,barva);
 	PutPixel(x+9,y-23,barva);
 PutPixel(x+5,y-24,barva);PutPixel(x+6,y-24,barva);PutPixel(x+7,y-24,barva);PutPixel(x+8,y-24,barva);
 PutPixel(x+6,y-25,barva);PutPixel(x+7,y-25,barva);
 {*******************}
end;

end.