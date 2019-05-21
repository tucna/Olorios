unit alien;

	interface
       uses graph;
          procedure otocL(x,y,barva,barva1:integer);
          procedure normal1r(x,y,barva,barva1:integer);
		procedure normal1l(x,y,barva,barva1:integer);
		procedure normal2r(x,y,barva,barva1:integer);
		procedure normal2l(x,y,barva,barva1:integer);
		procedure krok1r(x,y,barva,barva1:integer);
		procedure krok1l(x,y,barva,barva1:integer);
		procedure krok2r(x,y,barva,barva1:integer);
		procedure krok2l(x,y,barva,barva1:integer);
		procedure krok3r(x,y,barva,barva1:integer);
		procedure krok3l(x,y,barva,barva1:integer);
		procedure krok4r(x,y,barva,barva1:integer);
		procedure krok4l(x,y,barva,barva1:integer);
		procedure krok5r(x,y,barva,barva1:integer);
		procedure krok5l(x,y,barva,barva1:integer);
		procedure skok1ru(x,y,barva,barva1:integer);  {right,up}
		procedure skok1lu(x,y,barva,barva1:integer);  {right,up}
		procedure skok2ru(x,y,barva,barva1:integer);
		procedure skok2lu(x,y,barva,barva1:integer);
		procedure skok22ru(x,y,barva,barva1:integer);
		procedure skok22lu(x,y,barva,barva1:integer);
		procedure skok23ru(x,y,barva,barva1:integer);
		procedure skok23lu(x,y,barva,barva1:integer);
		procedure skok3ru(x,y,barva,barva1:integer);
		procedure skok3lu(x,y,barva,barva1:integer);

     implementation
 procedure otocL;
   begin
 {leva noha}
 PutPixel(x,y,barva);PutPixel(x+1,y,barva);PutPixel(x+2,y,barva);PutPixel(x+3,y,barva);PutPixel(x+4,y,barva);
 PutPixel(x,y-1,barva);PutPixel(x+1,y-1,barva);PutPixel(x+2,y-1,barva);PutPixel(x+3,y-1,barva);PutPixel(x+4,y-1,barva);
 PutPixel(x+1,y-2,barva);PutPixel(x+2,y-2,barva);PutPixel(x+3,y-2,barva);
 PutPixel(x+2,y-3,barva);
 PutPixel(x+2,y-4,barva);
 PutPixel(x+2,y-5,barva);PutPixel(x+3,y-5,barva);
 PutPixel(x+3,y-6,barva);
 PutPixel(x+3,y-7,barva);PutPixel(x+4,y-7,barva);
 PutPixel(x+5,y-8,barva);
 PutPixel(x+6,y-9,barva);
 {*******************}

 {prava noha}
 PutPixel(x+7,y-9,barva);
 PutPixel(x+8,y-8,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
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
 PutPixel(x+4,y-16,barva);
 PutPixel(x+4,y-15,barva);PutPixel(x+3,y-15,barva);PutPixel(x+2,y-15,barva);
 PutPixel(x+1,y-14,barva);
 PutPixel(x+1,y-13,barva);PutPixel(x,y-13,barva);PutPixel(x-1,y-13,barva);
 {**********************}

 {prava ruka}
 PutPixel(x+7,y-17,barva);PutPixel(x+8,y-17,barva);
 PutPixel(x+9,y-16,barva);PutPixel(x+10,y-16,barva);PutPixel(x+11,y-16,barva);
 PutPixel(x+11,y-15,barva);PutPixel(x+12,y-15,barva);
 PutPixel(x+13,y-14,barva);
 PutPixel(x+13,y-13,barva);
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

procedure normal1r;
	begin
 {leva noha}
 PutPixel(x,y,barva);PutPixel(x+1,y,barva);PutPixel(x+2,y,barva);PutPixel(x+3,y,barva);PutPixel(x+4,y,barva);
 	PutPixel(x+5,y,barva);
 PutPixel(x,y-1,barva);PutPixel(x+1,y-1,barva);PutPixel(x+2,y-1,barva);PutPixel(x+3,y-1,barva);PutPixel(x+4,y-1,barva);
 PutPixel(x+1,y-2,barva);PutPixel(x+2,y-2,barva);PutPixel(x+3,y-2,barva);
 PutPixel(x+2,y-3,barva);
 PutPixel(x+2,y-4,barva);
 PutPixel(x+2,y-5,barva);PutPixel(x+3,y-5,barva);
 PutPixel(x+3,y-6,barva);
 PutPixel(x+3,y-7,barva);PutPixel(x+4,y-7,barva);
 PutPixel(x+5,y-8,barva);
 PutPixel(x+6,y-9,barva);
 {*******************}

 {prava noha}
 PutPixel(x+7,y-9,barva);
 PutPixel(x+8,y-8,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
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
 PutPixel(x+4,y-16,barva);
 PutPixel(x+4,y-15,barva);PutPixel(x+3,y-15,barva);PutPixel(x+2,y-15,barva);
 PutPixel(x+1,y-14,barva);
 PutPixel(x+1,y-13,barva);PutPixel(x,y-13,barva);PutPixel(x-1,y-13,barva);
 PutPixel(x-2,y-12,barva);
 PutPixel(x-2,y-11,barva);PutPixel(x+1,y-11,barva);
 PutPixel(x-2,y-10,barva);PutPixel(x-1,y-10,barva);PutPixel(x,y-10,barva);
 PutPixel(x+1,y-9,barva);
 {**********************}

 {prava ruka}
 PutPixel(x+7,y-17,barva);PutPixel(x+8,y-17,barva);
 PutPixel(x+9,y-16,barva);PutPixel(x+10,y-16,barva);PutPixel(x+11,y-16,barva);
 PutPixel(x+11,y-15,barva);PutPixel(x+12,y-15,barva);
 PutPixel(x+13,y-14,barva);
 PutPixel(x+13,y-13,barva);PutPixel(x+17,y-13,barva);
 PutPixel(x+14,y-12,barva);PutPixel(x+15,y-12,barva);PutPixel(x+16,y-12,barva);
 PutPixel(x+17,y-11,barva);
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
 {*******************}
     end;

procedure normal1l;
	begin
 {leva noha}
 PutPixel(x,y,barva);PutPixel(x-1,y,barva);PutPixel(x-2,y,barva);PutPixel(x-3,y,barva);PutPixel(x-4,y,barva);
 	PutPixel(x-5,y,barva);
 PutPixel(x,y-1,barva);PutPixel(x-1,y-1,barva);PutPixel(x-2,y-1,barva);PutPixel(x-3,y-1,barva);PutPixel(x-4,y-1,barva);
 PutPixel(x-1,y-2,barva);PutPixel(x-2,y-2,barva);PutPixel(x-3,y-2,barva);
 PutPixel(x-2,y-3,barva);
 PutPixel(x-2,y-4,barva);
 PutPixel(x-2,y-5,barva);PutPixel(x-3,y-5,barva);
 PutPixel(x-3,y-6,barva);
 PutPixel(x-3,y-7,barva);PutPixel(x-4,y-7,barva);
 PutPixel(x-5,y-8,barva);
 PutPixel(x-6,y-9,barva);
 {*******************}

 {prava noha}
 PutPixel(x-7,y-9,barva);
 PutPixel(x-8,y-8,barva);
 PutPixel(x-9,y-7,barva);PutPixel(x-10,y-7,barva);
 PutPixel(x-10,y-6,barva);
 PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);
 PutPixel(x-11,y-4,barva);
 PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
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
 PutPixel(x-4,y-16,barva);
 PutPixel(x-4,y-15,barva);PutPixel(x-3,y-15,barva);PutPixel(x-2,y-15,barva);
 PutPixel(x-1,y-14,barva);
 PutPixel(x-1,y-13,barva);PutPixel(x,y-13,barva);PutPixel(x+1,y-13,barva);
 PutPixel(x+2,y-12,barva);
 PutPixel(x+2,y-11,barva);PutPixel(x-1,y-11,barva);
 PutPixel(x+2,y-10,barva);PutPixel(x+1,y-10,barva);PutPixel(x,y-10,barva);
 PutPixel(x-1,y-9,barva);
 {**********************}

 {prava ruka}
 PutPixel(x-7,y-17,barva);PutPixel(x-8,y-17,barva);
 PutPixel(x-9,y-16,barva);PutPixel(x-10,y-16,barva);PutPixel(x-11,y-16,barva);
 PutPixel(x-11,y-15,barva);PutPixel(x-12,y-15,barva);
 PutPixel(x-13,y-14,barva);
 PutPixel(x-13,y-13,barva);PutPixel(x-17,y-13,barva);
 PutPixel(x-14,y-12,barva);PutPixel(x-15,y-12,barva);PutPixel(x-16,y-12,barva);
 PutPixel(x-17,y-11,barva);
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
 {*******************}
     end;

procedure normal2r;
	begin
 {leva noha}
 PutPixel(x,y,barva);PutPixel(x+1,y,barva);PutPixel(x+2,y,barva);PutPixel(x+3,y,barva);PutPixel(x+4,y,barva);
 	PutPixel(x+5,y,barva);
 PutPixel(x,y-1,barva);PutPixel(x+1,y-1,barva);PutPixel(x+2,y-1,barva);PutPixel(x+3,y-1,barva);PutPixel(x+4,y-1,barva);
 PutPixel(x+1,y-2,barva);PutPixel(x+2,y-2,barva);PutPixel(x+3,y-2,barva);
 PutPixel(x+2,y-3,barva);
 PutPixel(x+2,y-4,barva);PutPixel(x+3,y-4,barva);
 PutPixel(x+2,y-5,barva);PutPixel(x+3,y-5,barva);PutPixel(x+4,y-5,barva);
 PutPixel(x+3,y-6,barva);PutPixel(x+5,y-6,barva);
 PutPixel(x+6,y-7,barva);PutPixel(x+7,y-7,barva);
 {************}

 {prava noha}
 PutPixel(x+8,y-7,barva);PutPixel(x+9,y-7,barva);
 PutPixel(x+10,y-6,barva);PutPixel(x+12,y-6,barva);
 PutPixel(x+11,y-5,barva);PutPixel(x+12,y-5,barva);PutPixel(x+13,y-5,barva);
 PutPixel(x+12,y-4,barva);PutPixel(x+13,y-4,barva);
 PutPixel(x+13,y-3,barva);
 PutPixel(x+12,y-2,barva);PutPixel(x+13,y-2,barva);PutPixel(x+14,y-2,barva);
 PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);PutPixel(x+14,y-1,barva);PutPixel(x+15,y-1,barva);
 PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);PutPixel(x+14,y,barva);PutPixel(x+15,y,barva);
 	PutPixel(x+16,y,barva);
 {*************************}

 {telo}
 PutPixel(x+7,y-8,barva);PutPixel(x+8,y-8,barva);
 PutPixel(x+7,y-9,barva);PutPixel(x+8,y-9,barva);
 PutPixel(x+7,y-10,barva);PutPixel(x+8,y-10,barva);
 PutPixel(x+7,y-11,barva);PutPixel(x+8,y-11,barva);
 PutPixel(x+7,y-12,barva);PutPixel(x+8,y-12,barva);
 PutPixel(x+7,y-13,barva);PutPixel(x+8,y-13,barva);
 PutPixel(x+7,y-14,barva);PutPixel(x+8,y-14,barva);
 {***************}

 {leva ruka}
 PutPixel(x+6,y-14,barva);
 PutPixel(x+5,y-13,barva);
 PutPixel(x+5,y-12,barva);PutPixel(x+4,y-12,barva);PutPixel(x+3,y-12,barva);
 PutPixel(x+2,y-11,barva);
 PutPixel(x+2,y-10,barva);PutPixel(x+1,y-10,barva);PutPixel(x,y-10,barva);
 PutPixel(x-1,y-9,barva);
 PutPixel(x-1,y-8,barva);
 PutPixel(x,y-7,barva);PutPixel(x+2,y-7,barva);
 PutPixel(x+1,y-6,barva);
 PutPixel(x,y-5,barva);
 {***************}

 {prava ruka}
 PutPixel(x+9,y-14,barva);
 PutPixel(x+10,y-13,barva);PutPixel(x+11,y-13,barva);PutPixel(x+12,y-13,barva);
 PutPixel(x+12,y-12,barva);
 PutPixel(x+12,y-11,barva);PutPixel(x+13,y-11,barva);
 PutPixel(x+13,y-10,barva);
 PutPixel(x+14,y-9,barva);PutPixel(x+16,y-9,barva);
 PutPixel(x+15,y-8,barva);
 PutPixel(x+14,y-7,barva);
 {********************}

 {hlava}
 PutPixel(x+7,y-15,barva);PutPixel(x+8,y-15,barva);
 PutPixel(x+6,y-16,barva);PutPixel(x+7,y-16,barva);PutPixel(x+8,y-16,barva);PutPixel(x+9,y-16,barva);
 PutPixel(x+5,y-17,barva);PutPixel(x+6,y-17,barva);PutPixel(x+7,y-17,barva);PutPixel(x+8,y-17,barva);PutPixel(x+9,y-17,barva);
 	PutPixel(x+10,y-17,barva);
 PutPixel(x+4,y-18,barva);PutPixel(x+5,y-18,barva);PutPixel(x+6,y-18,barva);PutPixel(x+7,y-18,barva);PutPixel(x+8,y-18,barva);
 	PutPixel(x+9,y-18,barva);PutPixel(x+10,y-18,barva);PutPixel(x+11,y-18,barva);
 PutPixel(x+4,y-19,barva);PutPixel(x+5,y-19,barva);PutPixel(x+6,y-19,barva);PutPixel(x+7,y-19,barva);PutPixel(x+8,y-19,barva1);
 	PutPixel(x+9,y-19,barva1);PutPixel(x+10,y-19,barva);PutPixel(x+11,y-19,barva);
 PutPixel(x+5,y-20,barva);PutPixel(x+6,y-20,barva);PutPixel(x+7,y-20,barva);PutPixel(x+8,y-20,barva1);PutPixel(x+9,y-20,barva);
 	PutPixel(x+10,y-20,barva);
 PutPixel(x+6,y-21,barva);PutPixel(x+7,y-21,barva);PutPixel(x+8,y-21,barva);PutPixel(x+9,y-21,barva);
 PutPixel(x+7,y-22,barva);PutPixel(x+8,y-22,barva);
 {*********}
	end;

procedure normal2l;
	begin
 {leva noha}
 PutPixel(x,y,barva);PutPixel(x-1,y,barva);PutPixel(x-2,y,barva);PutPixel(x-3,y,barva);PutPixel(x-4,y,barva);
 	PutPixel(x-5,y,barva);
 PutPixel(x,y-1,barva);PutPixel(x-1,y-1,barva);PutPixel(x-2,y-1,barva);PutPixel(x-3,y-1,barva);PutPixel(x-4,y-1,barva);
 PutPixel(x-1,y-2,barva);PutPixel(x-2,y-2,barva);PutPixel(x-3,y-2,barva);
 PutPixel(x-2,y-3,barva);
 PutPixel(x-2,y-4,barva);PutPixel(x-3,y-4,barva);
 PutPixel(x-2,y-5,barva);PutPixel(x-3,y-5,barva);PutPixel(x-4,y-5,barva);
 PutPixel(x-3,y-6,barva);PutPixel(x-5,y-6,barva);
 PutPixel(x-6,y-7,barva);PutPixel(x-7,y-7,barva);
 {************}

 {prava noha}
 PutPixel(x-8,y-7,barva);PutPixel(x-9,y-7,barva);
 PutPixel(x-10,y-6,barva);PutPixel(x-12,y-6,barva);
 PutPixel(x-11,y-5,barva);PutPixel(x-12,y-5,barva);PutPixel(x-13,y-5,barva);
 PutPixel(x-12,y-4,barva);PutPixel(x-13,y-4,barva);
 PutPixel(x-13,y-3,barva);
 PutPixel(x-12,y-2,barva);PutPixel(x-13,y-2,barva);PutPixel(x-14,y-2,barva);
 PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);PutPixel(x-14,y-1,barva);PutPixel(x-15,y-1,barva);
 PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);PutPixel(x-14,y,barva);PutPixel(x-15,y,barva);
 	PutPixel(x-16,y,barva);
 {*************************}

 {telo}
 PutPixel(x-7,y-8,barva);PutPixel(x-8,y-8,barva);
 PutPixel(x-7,y-9,barva);PutPixel(x-8,y-9,barva);
 PutPixel(x-7,y-10,barva);PutPixel(x-8,y-10,barva);
 PutPixel(x-7,y-11,barva);PutPixel(x-8,y-11,barva);
 PutPixel(x-7,y-12,barva);PutPixel(x-8,y-12,barva);
 PutPixel(x-7,y-13,barva);PutPixel(x-8,y-13,barva);
 PutPixel(x-7,y-14,barva);PutPixel(x-8,y-14,barva);
 {***************}

 {leva ruka}
 PutPixel(x-6,y-14,barva);
 PutPixel(x-5,y-13,barva);
 PutPixel(x-5,y-12,barva);PutPixel(x-4,y-12,barva);PutPixel(x-3,y-12,barva);
 PutPixel(x-2,y-11,barva);
 PutPixel(x-2,y-10,barva);PutPixel(x-1,y-10,barva);PutPixel(x,y-10,barva);
 PutPixel(x+1,y-9,barva);
 PutPixel(x+1,y-8,barva);
 PutPixel(x,y-7,barva);PutPixel(x-2,y-7,barva);
 PutPixel(x-1,y-6,barva);
 PutPixel(x,y-5,barva);
 {***************}

 {prava ruka}
 PutPixel(x-9,y-14,barva);
 PutPixel(x-10,y-13,barva);PutPixel(x-11,y-13,barva);PutPixel(x-12,y-13,barva);
 PutPixel(x-12,y-12,barva);
 PutPixel(x-12,y-11,barva);PutPixel(x-13,y-11,barva);
 PutPixel(x-13,y-10,barva);
 PutPixel(x-14,y-9,barva);PutPixel(x-16,y-9,barva);
 PutPixel(x-15,y-8,barva);
 PutPixel(x-14,y-7,barva);
 {********************}

 {hlava}
 PutPixel(x-7,y-15,barva);PutPixel(x-8,y-15,barva);
 PutPixel(x-6,y-16,barva);PutPixel(x-7,y-16,barva);PutPixel(x-8,y-16,barva);PutPixel(x-9,y-16,barva);
 PutPixel(x-5,y-17,barva);PutPixel(x-6,y-17,barva);PutPixel(x-7,y-17,barva);PutPixel(x-8,y-17,barva);PutPixel(x-9,y-17,barva);
 	PutPixel(x-10,y-17,barva);
 PutPixel(x-4,y-18,barva);PutPixel(x-5,y-18,barva);PutPixel(x-6,y-18,barva);PutPixel(x-7,y-18,barva);PutPixel(x-8,y-18,barva);
 	PutPixel(x-9,y-18,barva);PutPixel(x-10,y-18,barva);PutPixel(x-11,y-18,barva);
 PutPixel(x-4,y-19,barva);PutPixel(x-5,y-19,barva);PutPixel(x-6,y-19,barva);PutPixel(x-7,y-19,barva);PutPixel(x-8,y-19,barva1);
 	PutPixel(x-9,y-19,barva1);PutPixel(x-10,y-19,barva);PutPixel(x-11,y-19,barva);
 PutPixel(x-5,y-20,barva);PutPixel(x-6,y-20,barva);PutPixel(x-7,y-20,barva);PutPixel(x-8,y-20,barva1);PutPixel(x-9,y-20,barva);
 	PutPixel(x-10,y-20,barva);
 PutPixel(x-6,y-21,barva);PutPixel(x-7,y-21,barva);PutPixel(x-8,y-21,barva);PutPixel(x-9,y-21,barva);
 PutPixel(x-7,y-22,barva);PutPixel(x-8,y-22,barva);
 {*********}
	end;

procedure krok1r;
	begin
 {prava noha}
 PutPixel(x+7,y-9,barva);
 PutPixel(x+8,y-8,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 {*************}

 {leva noha}
 PutPixel(x+6,y-9,barva);
 PutPixel(x+5,y-8,barva);
 PutPixel(x+5,y-7,barva);
 PutPixel(x+5,y-6,barva);PutPixel(x+6,y-6,barva);
 PutPixel(x+5,y-5,barva);PutPixel(x+6,y-5,barva);
 PutPixel(x+6,y-4,barva);
 PutPixel(x+5,y-3,barva);PutPixel(x+6,y-3,barva);PutPixel(x+7,y-3,barva);
 PutPixel(x+4,y-2,barva);PutPixel(x+5,y-2,barva);PutPixel(x+6,y-2,barva);PutPixel(x+7,y-2,barva);PutPixel(x+8,y-2,barva);
 PutPixel(x+4,y-1,barva);PutPixel(x+5,y-1,barva);PutPixel(x+6,y-1,barva);PutPixel(x+7,y-1,barva);PutPixel(x+8,y-1,barva);
 {****************}

 {telo}
 PutPixel(x+6,y-10,barva);PutPixel(x+7,y-10,barva);
 PutPixel(x+6,y-11,barva);PutPixel(x+7,y-11,barva);
 PutPixel(x+6,y-12,barva);PutPixel(x+7,y-12,barva);
 PutPixel(x+6,y-13,barva);PutPixel(x+7,y-13,barva);
 PutPixel(x+6,y-14,barva);PutPixel(x+7,y-14,barva);
 PutPixel(x+6,y-15,barva);PutPixel(x+7,y-15,barva);
 PutPixel(x+6,y-16,barva);PutPixel(x+7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x+6,y-17,barva);PutPixel(x+5,y-17,barva);
 PutPixel(x+4,y-16,barva);
 PutPixel(x+4,y-15,barva);PutPixel(x+3,y-15,barva);
 PutPixel(x+3,y-14,barva);
 PutPixel(x+3,y-13,barva);PutPixel(x+2,y-13,barva);
 PutPixel(x+2,y-12,barva);PutPixel(x+5,y-12,barva);
 PutPixel(x+2,y-11,barva);PutPixel(x+3,y-11,barva);PutPixel(x+4,y-11,barva);
 PutPixel(x+8,y-13,barva);
 PutPixel(x+8,y-11,barva);
 {****************}

 {prava ruka}
 PutPixel(x+7,y-17,barva);
 PutPixel(x+8,y-16,barva);PutPixel(x+9,y-16,barva);PutPixel(x+10,y-16,barva);
 PutPixel(x+10,y-15,barva);PutPixel(x+11,y-15,barva);
 PutPixel(x+11,y-14,barva);
 PutPixel(x+11,y-13,barva);PutPixel(x+14,y-13,barva);
 PutPixel(x+12,y-12,barva);PutPixel(x+13,y-12,barva);
 PutPixel(x+14,y-11,barva);
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

procedure krok1l;
	begin
 {prava noha}
 PutPixel(x-7,y-9,barva);
 PutPixel(x-8,y-8,barva);
 PutPixel(x-9,y-7,barva);PutPixel(x-10,y-7,barva);
 PutPixel(x-10,y-6,barva);
 PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);
 PutPixel(x-11,y-4,barva);
 PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 {*************}

 {leva noha}
 PutPixel(x-6,y-9,barva);
 PutPixel(x-5,y-8,barva);
 PutPixel(x-5,y-7,barva);
 PutPixel(x-5,y-6,barva);PutPixel(x-6,y-6,barva);
 PutPixel(x-5,y-5,barva);PutPixel(x-6,y-5,barva);
 PutPixel(x-6,y-4,barva);
 PutPixel(x-5,y-3,barva);PutPixel(x-6,y-3,barva);PutPixel(x-7,y-3,barva);
 PutPixel(x-4,y-2,barva);PutPixel(x-5,y-2,barva);PutPixel(x-6,y-2,barva);PutPixel(x-7,y-2,barva);PutPixel(x-8,y-2,barva);
 PutPixel(x-4,y-1,barva);PutPixel(x-5,y-1,barva);PutPixel(x-6,y-1,barva);PutPixel(x-7,y-1,barva);PutPixel(x-8,y-1,barva);
 {****************}

 {telo}
 PutPixel(x-6,y-10,barva);PutPixel(x-7,y-10,barva);
 PutPixel(x-6,y-11,barva);PutPixel(x-7,y-11,barva);
 PutPixel(x-6,y-12,barva);PutPixel(x-7,y-12,barva);
 PutPixel(x-6,y-13,barva);PutPixel(x-7,y-13,barva);
 PutPixel(x-6,y-14,barva);PutPixel(x-7,y-14,barva);
 PutPixel(x-6,y-15,barva);PutPixel(x-7,y-15,barva);
 PutPixel(x-6,y-16,barva);PutPixel(x-7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x-6,y-17,barva);PutPixel(x-5,y-17,barva);
 PutPixel(x-4,y-16,barva);
 PutPixel(x-4,y-15,barva);PutPixel(x-3,y-15,barva);
 PutPixel(x-3,y-14,barva);
 PutPixel(x-3,y-13,barva);PutPixel(x-2,y-13,barva);
 PutPixel(x-2,y-12,barva);PutPixel(x-5,y-12,barva);
 PutPixel(x-2,y-11,barva);PutPixel(x-3,y-11,barva);PutPixel(x-4,y-11,barva);
 PutPixel(x-8,y-13,barva);
 PutPixel(x-8,y-11,barva);
 {****************}

 {prava ruka}
 PutPixel(x-7,y-17,barva);
 PutPixel(x-8,y-16,barva);PutPixel(x-9,y-16,barva);PutPixel(x-10,y-16,barva);
 PutPixel(x-10,y-15,barva);PutPixel(x-11,y-15,barva);
 PutPixel(x-11,y-14,barva);
 PutPixel(x-11,y-13,barva);PutPixel(x-14,y-13,barva);
 PutPixel(x-12,y-12,barva);PutPixel(x-13,y-12,barva);
 PutPixel(x-14,y-11,barva);
 {****************}

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
 {*******************}
     end;

procedure krok2r;
	begin
 {prava noha+leva noha}
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 PutPixel(x+10,y-3,barva);PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-4,barva);PutPixel(x+11,y-4,barva);
 PutPixel(x+9,y-5,barva);PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
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
 {*********************}

 {leva ruka}
 PutPixel(x+8,y-17,barva);PutPixel(x+7,y-17,barva);
 PutPixel(x+6,y-16,barva);
 PutPixel(x+6,y-15,barva);
 PutPixel(x+6,y-14,barva);PutPixel(x+5,y-14,barva);
 PutPixel(x+4,y-13,barva);
 PutPixel(x+4,y-12,barva);
 PutPixel(x+4,y-11,barva);
 PutPixel(x+5,y-10,barva);PutPixel(x+7,y-10,barva);
 PutPixel(x+6,y-9,barva);
 PutPixel(x+5,y-8,barva);
 {*****************}

 {prava ruka}
 PutPixel(x+9,y-17,barva);
 PutPixel(x+10,y-16,barva);PutPixel(x+11,y-16,barva);PutPixel(x+12,y-16,barva);
 PutPixel(x+12,y-15,barva);PutPixel(x+13,y-15,barva);
 PutPixel(x+13,y-14,barva);
 PutPixel(x+14,y-13,barva);PutPixel(x+16,y-13,barva);
 PutPixel(x+15,y-12,barva);
 PutPixel(x+14,y-11,barva);
 PutPixel(x+8,y-18,barva); PutPixel(x+9,y-18,barva);
 {*****************}

 {hlava}
 PutPixel(x+8,y-19,barva);PutPixel(x+9,y-19,barva);
 PutPixel(x+7,y-20,barva);PutPixel(x+8,y-20,barva);PutPixel(x+9,y-20,barva);PutPixel(x+10,y-20,barva);
 PutPixel(x+6,y-21,barva);PutPixel(x+7,y-21,barva);PutPixel(x+8,y-21,barva);PutPixel(x+9,y-21,barva);PutPixel(x+10,y-21,barva);
  	PutPixel(x+11,y-21,barva);
 PutPixel(x+5,y-22,barva);PutPixel(x+6,y-22,barva);PutPixel(x+7,y-22,barva);PutPixel(x+8,y-22,barva);PutPixel(x+9,y-22,barva);
 	PutPixel(x+10,y-22,barva);PutPixel(x+11,y-22,barva);PutPixel(x+12,y-22,barva);
 PutPixel(x+5,y-23,barva);PutPixel(x+6,y-23,barva);PutPixel(x+7,y-23,barva);PutPixel(x+8,y-23,barva);PutPixel(x+9,y-23,barva1);
 	PutPixel(x+10,y-23,barva1);PutPixel(x+11,y-23,barva);PutPixel(x+12,y-23,barva);
 PutPixel(x+6,y-24,barva);PutPixel(x+7,y-24,barva);PutPixel(x+8,y-24,barva);PutPixel(x+9,y-24,barva1);
 	PutPixel(x+10,y-24,barva);PutPixel(x+11,y-24,barva);
 PutPixel(x+7,y-25,barva);PutPixel(x+8,y-25,barva);PutPixel(x+9,y-25,barva);PutPixel(x+10,y-25,barva);
 PutPixel(x+8,y-26,barva);PutPixel(x+9,y-26,barva);
 {*******************}
     end;

procedure krok2l;
	begin
 {prava noha+leva noha}
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 PutPixel(x-10,y-3,barva);PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-4,barva);PutPixel(x-11,y-4,barva);
 PutPixel(x-9,y-5,barva);PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);
 PutPixel(x-9,y-6,barva);PutPixel(x-10,y-6,barva);
 PutPixel(x-9,y-7,barva);PutPixel(x-10,y-7,barva);
 PutPixel(x-8,y-8,barva);PutPixel(x-9,y-8,barva);
 PutPixel(x-8,y-9,barva);PutPixel(x-9,y-9,barva);
 {*******************}

 {telo}
 PutPixel(x-8,y-10,barva);PutPixel(x-9,y-10,barva);
 PutPixel(x-8,y-11,barva);PutPixel(x-9,y-11,barva);
 PutPixel(x-8,y-12,barva);PutPixel(x-9,y-12,barva);
 PutPixel(x-8,y-13,barva);PutPixel(x-9,y-13,barva);
 PutPixel(x-8,y-14,barva);PutPixel(x-9,y-14,barva);
 PutPixel(x-8,y-15,barva);PutPixel(x-9,y-15,barva);
 PutPixel(x-8,y-16,barva);PutPixel(x-9,y-16,barva);
 {*********************}

 {leva ruka}
 PutPixel(x-8,y-17,barva);PutPixel(x-7,y-17,barva);
 PutPixel(x-6,y-16,barva);
 PutPixel(x-6,y-15,barva);
 PutPixel(x-6,y-14,barva);PutPixel(x-5,y-14,barva);
 PutPixel(x-4,y-13,barva);
 PutPixel(x-4,y-12,barva);
 PutPixel(x-4,y-11,barva);
 PutPixel(x-5,y-10,barva);PutPixel(x-7,y-10,barva);
 PutPixel(x-6,y-9,barva);
 PutPixel(x-5,y-8,barva);
 {*****************}

 {prava ruka}
 PutPixel(x-9,y-17,barva);
 PutPixel(x-10,y-16,barva);PutPixel(x-11,y-16,barva);PutPixel(x-12,y-16,barva);
 PutPixel(x-12,y-15,barva);PutPixel(x-13,y-15,barva);
 PutPixel(x-13,y-14,barva);
 PutPixel(x-14,y-13,barva);PutPixel(x-16,y-13,barva);
 PutPixel(x-15,y-12,barva);
 PutPixel(x-14,y-11,barva);
 PutPixel(x-8,y-18,barva); PutPixel(x-9,y-18,barva);
 {*****************}

 {hlava}
 PutPixel(x-8,y-19,barva);PutPixel(x-9,y-19,barva);
 PutPixel(x-7,y-20,barva);PutPixel(x-8,y-20,barva);PutPixel(x-9,y-20,barva);PutPixel(x-10,y-20,barva);
 PutPixel(x-6,y-21,barva);PutPixel(x-7,y-21,barva);PutPixel(x-8,y-21,barva);PutPixel(x-9,y-21,barva);PutPixel(x-10,y-21,barva);
  	PutPixel(x-11,y-21,barva);
 PutPixel(x-5,y-22,barva);PutPixel(x-6,y-22,barva);PutPixel(x-7,y-22,barva);PutPixel(x-8,y-22,barva);PutPixel(x-9,y-22,barva);
 	PutPixel(x-10,y-22,barva);PutPixel(x-11,y-22,barva);PutPixel(x-12,y-22,barva);
 PutPixel(x-5,y-23,barva);PutPixel(x-6,y-23,barva);PutPixel(x-7,y-23,barva);PutPixel(x-8,y-23,barva);PutPixel(x-9,y-23,barva1);
 	PutPixel(x-10,y-23,barva1);PutPixel(x-11,y-23,barva);PutPixel(x-12,y-23,barva);
 PutPixel(x-6,y-24,barva);PutPixel(x-7,y-24,barva);PutPixel(x-8,y-24,barva);PutPixel(x-9,y-24,barva1);
 	PutPixel(x-10,y-24,barva);PutPixel(x-11,y-24,barva);
 PutPixel(x-7,y-25,barva);PutPixel(x-8,y-25,barva);PutPixel(x-9,y-25,barva);PutPixel(x-10,y-25,barva);
 PutPixel(x-8,y-26,barva);PutPixel(x-9,y-26,barva);
 {*******************}
     end;

procedure krok3r;
	begin
 {nohy+telo+ruce}
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);PutPixel(x+13,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 PutPixel(x+10,y-3,barva);PutPixel(x+11,y-3,barva);PutPixel(x+12,y-3,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-6,barva);
 PutPixel(x+11,y-7,barva);
 PutPixel(x+11,y-8,barva);
 PutPixel(x+10,y-9,barva);PutPixel(x+11,y-9,barva);
 PutPixel(x+10,y-10,barva);PutPixel(x+11,y-10,barva);
 PutPixel(x+10,y-11,barva);PutPixel(x+11,y-11,barva);PutPixel(x+12,y-11,barva);
 PutPixel(x+10,y-12,barva);PutPixel(x+11,y-12,barva);
 PutPixel(x+10,y-13,barva);PutPixel(x+11,y-13,barva);
 PutPixel(x+10,y-14,barva);PutPixel(x+11,y-14,barva);
 PutPixel(x+10,y-15,barva);PutPixel(x+11,y-15,barva);
 PutPixel(x+10,y-16,barva);PutPixel(x+11,y-16,barva);
 PutPixel(x+10,y-17,barva);PutPixel(x+11,y-17,barva);
 PutPixel(x+10,y-18,barva);PutPixel(x+11,y-18,barva);
 PutPixel(x+10,y-19,barva);PutPixel(x+11,y-19,barva);
 {*************}

 {hlava}
 PutPixel(x+10,y-20,barva);PutPixel(x+11,y-20,barva);
 PutPixel(x+9,y-21,barva);PutPixel(x+10,y-21,barva);PutPixel(x+11,y-21,barva);PutPixel(x+12,y-21,barva);
 PutPixel(x+8,y-22,barva);PutPixel(x+9,y-22,barva);PutPixel(x+10,y-22,barva);PutPixel(x+11,y-22,barva);
 	PutPixel(x+12,y-22,barva);PutPixel(x+13,y-22,barva);
 PutPixel(x+7,y-23,barva);PutPixel(x+8,y-23,barva);PutPixel(x+9,y-23,barva);PutPixel(x+10,y-23,barva);
 	PutPixel(x+11,y-23,barva);PutPixel(x+12,y-23,barva);PutPixel(x+13,y-23,barva);PutPixel(x+14,y-23,barva);
 PutPixel(x+7,y-24,barva);PutPixel(x+8,y-24,barva);PutPixel(x+9,y-24,barva);PutPixel(x+10,y-24,barva);
 	PutPixel(x+11,y-24,barva1);PutPixel(x+12,y-24,barva1);PutPixel(x+13,y-24,barva);PutPixel(x+14,y-24,barva);
 PutPixel(x+8,y-25,barva);PutPixel(x+9,y-25,barva);PutPixel(x+10,y-25,barva);PutPixel(x+11,y-25,barva1);
 	PutPixel(x+12,y-25,barva);PutPixel(x+13,y-25,barva);
 PutPixel(x+9,y-26,barva);PutPixel(x+10,y-26,barva);PutPixel(x+11,y-26,barva);PutPixel(x+12,y-26,barva);
 PutPixel(x+10,y-27,barva);PutPixel(x+11,y-27,barva);
 {************}
	end;

procedure krok3l;
	begin
 {nohy+telo+ruce}
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);PutPixel(x-13,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 PutPixel(x-10,y-3,barva);PutPixel(x-11,y-3,barva);PutPixel(x-12,y-3,barva);
 PutPixel(x-11,y-4,barva);
 PutPixel(x-11,y-5,barva);
 PutPixel(x-11,y-6,barva);
 PutPixel(x-11,y-7,barva);
 PutPixel(x-11,y-8,barva);
 PutPixel(x-10,y-9,barva);PutPixel(x-11,y-9,barva);
 PutPixel(x-10,y-10,barva);PutPixel(x-11,y-10,barva);
 PutPixel(x-10,y-11,barva);PutPixel(x-11,y-11,barva);PutPixel(x-12,y-11,barva);
 PutPixel(x-10,y-12,barva);PutPixel(x-11,y-12,barva);
 PutPixel(x-10,y-13,barva);PutPixel(x-11,y-13,barva);
 PutPixel(x-10,y-14,barva);PutPixel(x-11,y-14,barva);
 PutPixel(x-10,y-15,barva);PutPixel(x-11,y-15,barva);
 PutPixel(x-10,y-16,barva);PutPixel(x-11,y-16,barva);
 PutPixel(x-10,y-17,barva);PutPixel(x-11,y-17,barva);
 PutPixel(x-10,y-18,barva);PutPixel(x-11,y-18,barva);
 PutPixel(x-10,y-19,barva);PutPixel(x-11,y-19,barva);
 {*************}

 {hlava}
 PutPixel(x-10,y-20,barva);PutPixel(x-11,y-20,barva);
 PutPixel(x-9,y-21,barva);PutPixel(x-10,y-21,barva);PutPixel(x-11,y-21,barva);PutPixel(x-12,y-21,barva);
 PutPixel(x-8,y-22,barva);PutPixel(x-9,y-22,barva);PutPixel(x-10,y-22,barva);PutPixel(x-11,y-22,barva);
 	PutPixel(x-12,y-22,barva);PutPixel(x-13,y-22,barva);
 PutPixel(x-7,y-23,barva);PutPixel(x-8,y-23,barva);PutPixel(x-9,y-23,barva);PutPixel(x-10,y-23,barva);
 	PutPixel(x-11,y-23,barva);PutPixel(x-12,y-23,barva);PutPixel(x-13,y-23,barva);PutPixel(x-14,y-23,barva);
 PutPixel(x-7,y-24,barva);PutPixel(x-8,y-24,barva);PutPixel(x-9,y-24,barva);PutPixel(x-10,y-24,barva);
 	PutPixel(x-11,y-24,barva1);PutPixel(x-12,y-24,barva1);PutPixel(x-13,y-24,barva);PutPixel(x-14,y-24,barva);
 PutPixel(x-8,y-25,barva);PutPixel(x-9,y-25,barva);PutPixel(x-10,y-25,barva);PutPixel(x-11,y-25,barva1);
 	PutPixel(x-12,y-25,barva);PutPixel(x-13,y-25,barva);
 PutPixel(x-9,y-26,barva);PutPixel(x-10,y-26,barva);PutPixel(x-11,y-26,barva);PutPixel(x-12,y-26,barva);
 PutPixel(x-10,y-27,barva);PutPixel(x-11,y-27,barva);
 {************}
	end;

procedure krok4r;
	begin
 {nohy}
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 PutPixel(x+10,y-3,barva);PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-4,barva);PutPixel(x+11,y-4,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);PutPixel(x+12,y-5,barva);
 PutPixel(x+11,y-6,barva);PutPixel(x+12,y-6,barva);
 PutPixel(x+11,y-7,barva);PutPixel(x+12,y-7,barva);
 PutPixel(x+12,y-8,barva);PutPixel(x+13,y-8,barva);
 PutPixel(x+12,y-9,barva);PutPixel(x+13,y-9,barva);
 {************}

 {telo}
 PutPixel(x+12,y-10,barva);PutPixel(x+13,y-10,barva);
 PutPixel(x+12,y-11,barva);PutPixel(x+13,y-11,barva);
 PutPixel(x+12,y-12,barva);PutPixel(x+13,y-12,barva);
 PutPixel(x+12,y-13,barva);PutPixel(x+13,y-13,barva);
 PutPixel(x+12,y-14,barva);PutPixel(x+13,y-14,barva);
 PutPixel(x+12,y-15,barva);PutPixel(x+13,y-15,barva);
 PutPixel(x+12,y-16,barva);PutPixel(x+13,y-16,barva);
 {************}

 {leva ruka}
 PutPixel(x+12,y-17,barva);PutPixel(x+11,y-17,barva);
 PutPixel(x+10,y-16,barva);
 PutPixel(x+10,y-15,barva);
 PutPixel(x+10,y-14,barva);PutPixel(x+9,y-14,barva);
 PutPixel(x+8,y-13,barva);
 PutPixel(x+8,y-12,barva);
 PutPixel(x+8,y-11,barva);
 PutPixel(x+9,y-10,barva);PutPixel(x+11,y-10,barva);
 PutPixel(x+10,y-9,barva);
 PutPixel(x+9,y-8,barva);
 {************}

 {prava ruka}
 PutPixel(x+13,y-17,barva);
 PutPixel(x+14,y-16,barva);PutPixel(x+15,y-16,barva);PutPixel(x+16,y-16,barva);
 PutPixel(x+16,y-15,barva);PutPixel(x+17,y-15,barva);
 PutPixel(x+17,y-14,barva);
 PutPixel(x+18,y-13,barva);PutPixel(x+20,y-13,barva);
 PutPixel(x+19,y-12,barva);
 PutPixel(x+18,y-11,barva);
 PutPixel(x+12,y-18,barva); PutPixel(x+13,y-18,barva);
 {*****************}

 {hlava}
 PutPixel(x+12,y-19,barva);PutPixel(x+13,y-19,barva);
 PutPixel(x+11,y-20,barva);PutPixel(x+12,y-20,barva);PutPixel(x+13,y-20,barva);PutPixel(x+14,y-20,barva);
 PutPixel(x+10,y-21,barva);PutPixel(x+11,y-21,barva);PutPixel(x+12,y-21,barva);PutPixel(x+13,y-21,barva);
 	PutPixel(x+14,y-21,barva);PutPixel(x+15,y-21,barva);
 PutPixel(x+9,y-22,barva);PutPixel(x+10,y-22,barva);PutPixel(x+11,y-22,barva);PutPixel(x+12,y-22,barva);
 	PutPixel(x+13,y-22,barva);PutPixel(x+14,y-22,barva);PutPixel(x+15,y-22,barva);PutPixel(x+16,y-22,barva);
 PutPixel(x+9,y-23,barva);PutPixel(x+10,y-23,barva);PutPixel(x+11,y-23,barva);PutPixel(x+12,y-23,barva);
 	PutPixel(x+13,y-23,barva1);PutPixel(x+14,y-23,barva1);PutPixel(x+15,y-23,barva);PutPixel(x+16,y-23,barva);
 PutPixel(x+10,y-24,barva);PutPixel(x+11,y-24,barva);PutPixel(x+12,y-24,barva);PutPixel(x+13,y-24,barva1);
 	PutPixel(x+14,y-24,barva);PutPixel(x+15,y-24,barva);
 PutPixel(x+11,y-25,barva);PutPixel(x+12,y-25,barva);PutPixel(x+13,y-25,barva);PutPixel(x+14,y-25,barva);
 PutPixel(x+12,y-26,barva);PutPixel(x+13,y-26,barva);
 {*******************}
 	end;

procedure krok4l;
	begin
 {nohy}
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 PutPixel(x-10,y-3,barva);PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-4,barva);PutPixel(x-11,y-4,barva);
 PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);PutPixel(x-12,y-5,barva);
 PutPixel(x-11,y-6,barva);PutPixel(x-12,y-6,barva);
 PutPixel(x-11,y-7,barva);PutPixel(x-12,y-7,barva);
 PutPixel(x-12,y-8,barva);PutPixel(x-13,y-8,barva);
 PutPixel(x-12,y-9,barva);PutPixel(x-13,y-9,barva);
 {************}

 {telo}
 PutPixel(x-12,y-10,barva);PutPixel(x-13,y-10,barva);
 PutPixel(x-12,y-11,barva);PutPixel(x-13,y-11,barva);
 PutPixel(x-12,y-12,barva);PutPixel(x-13,y-12,barva);
 PutPixel(x-12,y-13,barva);PutPixel(x-13,y-13,barva);
 PutPixel(x-12,y-14,barva);PutPixel(x-13,y-14,barva);
 PutPixel(x-12,y-15,barva);PutPixel(x-13,y-15,barva);
 PutPixel(x-12,y-16,barva);PutPixel(x-13,y-16,barva);
 {************}

 {leva ruka}
 PutPixel(x-12,y-17,barva);PutPixel(x-11,y-17,barva);
 PutPixel(x-10,y-16,barva);
 PutPixel(x-10,y-15,barva);
 PutPixel(x-10,y-14,barva);PutPixel(x-9,y-14,barva);
 PutPixel(x-8,y-13,barva);
 PutPixel(x-8,y-12,barva);
 PutPixel(x-8,y-11,barva);
 PutPixel(x-9,y-10,barva);PutPixel(x-11,y-10,barva);
 PutPixel(x-10,y-9,barva);
 PutPixel(x-9,y-8,barva);
 {************}

 {prava ruka}
 PutPixel(x-13,y-17,barva);
 PutPixel(x-14,y-16,barva);PutPixel(x-15,y-16,barva);PutPixel(x-16,y-16,barva);
 PutPixel(x-16,y-15,barva);PutPixel(x-17,y-15,barva);
 PutPixel(x-17,y-14,barva);
 PutPixel(x-18,y-13,barva);PutPixel(x-20,y-13,barva);
 PutPixel(x-19,y-12,barva);
 PutPixel(x-18,y-11,barva);
 PutPixel(x-12,y-18,barva); PutPixel(x-13,y-18,barva);
 {*****************}

 {hlava}
 PutPixel(x-12,y-19,barva);PutPixel(x-13,y-19,barva);
 PutPixel(x-11,y-20,barva);PutPixel(x-12,y-20,barva);PutPixel(x-13,y-20,barva);PutPixel(x-14,y-20,barva);
 PutPixel(x-10,y-21,barva);PutPixel(x-11,y-21,barva);PutPixel(x-12,y-21,barva);PutPixel(x-13,y-21,barva);
 	PutPixel(x-14,y-21,barva);PutPixel(x-15,y-21,barva);
 PutPixel(x-9,y-22,barva);PutPixel(x-10,y-22,barva);PutPixel(x-11,y-22,barva);PutPixel(x-12,y-22,barva);
 	PutPixel(x-13,y-22,barva);PutPixel(x-14,y-22,barva);PutPixel(x-15,y-22,barva);PutPixel(x-16,y-22,barva);
 PutPixel(x-9,y-23,barva);PutPixel(x-10,y-23,barva);PutPixel(x-11,y-23,barva);PutPixel(x-12,y-23,barva);
 	PutPixel(x-13,y-23,barva1);PutPixel(x-14,y-23,barva1);PutPixel(x-15,y-23,barva);PutPixel(x-16,y-23,barva);
 PutPixel(x-10,y-24,barva);PutPixel(x-11,y-24,barva);PutPixel(x-12,y-24,barva);PutPixel(x-13,y-24,barva1);
 	PutPixel(x-14,y-24,barva);PutPixel(x-15,y-24,barva);
 PutPixel(x-11,y-25,barva);PutPixel(x-12,y-25,barva);PutPixel(x-13,y-25,barva);PutPixel(x-14,y-25,barva);
 PutPixel(x-12,y-26,barva);PutPixel(x-13,y-26,barva);
 {*******************}
 	end;

procedure krok5r;
	begin
 {leva noha}
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 PutPixel(x+11,y-3,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-5,barva);PutPixel(x+12,y-5,barva);
 PutPixel(x+12,y-6,barva);
 PutPixel(x+12,y-7,barva);PutPixel(x+13,y-7,barva);
 PutPixel(x+14,y-8,barva);
 PutPixel(x+15,y-9,barva);
 {********}

 {Prava noha}
 PutPixel(x+16,y-9,barva);
 PutPixel(x+17,y-8,barva);
 PutPixel(x+17,y-7,barva);
 PutPixel(x+17,y-6,barva);PutPixel(x+18,y-6,barva);
 PutPixel(x+17,y-5,barva);PutPixel(x+18,y-5,barva);
 PutPixel(x+18,y-4,barva);
 PutPixel(x+17,y-3,barva);PutPixel(x+18,y-3,barva);PutPixel(x+19,y-3,barva);
 PutPixel(x+16,y-2,barva);PutPixel(x+17,y-2,barva);PutPixel(x+18,y-2,barva);PutPixel(x+19,y-2,barva);PutPixel(x+20,y-2,barva);
 PutPixel(x+16,y-1,barva);PutPixel(x+17,y-1,barva);PutPixel(x+18,y-1,barva);PutPixel(x+19,y-1,barva);PutPixel(x+20,y-1,barva);
 	PutPixel(x+21,y-1,barva);
 {****************}

 {telo}
 PutPixel(x+15,y-10,barva);PutPixel(x+16,y-10,barva);
 PutPixel(x+15,y-11,barva);PutPixel(x+16,y-11,barva);
 PutPixel(x+15,y-12,barva);PutPixel(x+16,y-12,barva);
 PutPixel(x+15,y-13,barva);PutPixel(x+16,y-13,barva);
 PutPixel(x+15,y-14,barva);PutPixel(x+16,y-14,barva);
 PutPixel(x+15,y-15,barva);PutPixel(x+16,y-15,barva);
 PutPixel(x+15,y-16,barva);PutPixel(x+16,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x+15,y-17,barva);PutPixel(x+14,y-17,barva);
 PutPixel(x+13,y-16,barva);
 PutPixel(x+13,y-15,barva);PutPixel(x+12,y-15,barva);
 PutPixel(x+12,y-14,barva);
 PutPixel(x+12,y-13,barva);PutPixel(x+11,y-13,barva);
 PutPixel(x+11,y-12,barva);PutPixel(x+14,y-12,barva);
 PutPixel(x+11,y-11,barva);PutPixel(x+12,y-11,barva);PutPixel(x+13,y-11,barva);
 PutPixel(x+17,y-13,barva);
 PutPixel(x+17,y-11,barva);
 {****************}

 {prava ruka}
 PutPixel(x+16,y-17,barva);
 PutPixel(x+17,y-16,barva);PutPixel(x+18,y-16,barva);PutPixel(x+19,y-16,barva);
 PutPixel(x+19,y-15,barva);PutPixel(x+20,y-15,barva);
 PutPixel(x+20,y-14,barva);
 PutPixel(x+20,y-13,barva);PutPixel(x+23,y-13,barva);
 PutPixel(x+21,y-12,barva);PutPixel(x+22,y-12,barva);
 PutPixel(x+23,y-11,barva);
 {****************}

 {hlava}
 PutPixel(x+15,y-18,barva);PutPixel(x+16,y-18,barva);
 PutPixel(x+14,y-19,barva);PutPixel(x+15,y-19,barva);PutPixel(x+16,y-19,barva);PutPixel(x+17,y-19,barva);
 PutPixel(x+13,y-20,barva);PutPixel(x+14,y-20,barva);PutPixel(x+15,y-20,barva);PutPixel(x+16,y-20,barva);
 	PutPixel(x+17,y-20,barva);PutPixel(x+18,y-20,barva);
 PutPixel(x+12,y-21,barva);PutPixel(x+13,y-21,barva);PutPixel(x+14,y-21,barva);PutPixel(x+15,y-21,barva);
 	PutPixel(x+16,y-21,barva);PutPixel(x+17,y-21,barva);PutPixel(x+18,y-21,barva);PutPixel(x+19,y-21,barva);
 PutPixel(x+12,y-22,barva);PutPixel(x+13,y-22,barva);PutPixel(x+14,y-22,barva);PutPixel(x+15,y-22,barva);
 	PutPixel(x+16,y-22,barva1);PutPixel(x+17,y-22,barva1);PutPixel(x+18,y-22,barva);PutPixel(x+19,y-22,barva);
 PutPixel(x+13,y-23,barva);PutPixel(x+14,y-23,barva);PutPixel(x+15,y-23,barva);PutPixel(x+16,y-23,barva1);
 	PutPixel(x+17,y-23,barva);PutPixel(x+18,y-23,barva);
 PutPixel(x+14,y-24,barva);PutPixel(x+15,y-24,barva);PutPixel(x+16,y-24,barva);PutPixel(x+17,y-24,barva);
 PutPixel(x+15,y-25,barva);PutPixel(x+16,y-25,barva);
 {*******************}
     end;

procedure krok5l;
	begin
 {leva noha}
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 PutPixel(x-11,y-3,barva);
 PutPixel(x-11,y-4,barva);
 PutPixel(x-11,y-5,barva);PutPixel(x-12,y-5,barva);
 PutPixel(x-12,y-6,barva);
 PutPixel(x-12,y-7,barva);PutPixel(x-13,y-7,barva);
 PutPixel(x-14,y-8,barva);
 PutPixel(x-15,y-9,barva);
 {********}

 {Prava noha}
 PutPixel(x-16,y-9,barva);
 PutPixel(x-17,y-8,barva);
 PutPixel(x-17,y-7,barva);
 PutPixel(x-17,y-6,barva);PutPixel(x-18,y-6,barva);
 PutPixel(x-17,y-5,barva);PutPixel(x-18,y-5,barva);
 PutPixel(x-18,y-4,barva);
 PutPixel(x-17,y-3,barva);PutPixel(x-18,y-3,barva);PutPixel(x-19,y-3,barva);
 PutPixel(x-16,y-2,barva);PutPixel(x-17,y-2,barva);PutPixel(x-18,y-2,barva);PutPixel(x-19,y-2,barva);PutPixel(x-20,y-2,barva);
 PutPixel(x-16,y-1,barva);PutPixel(x-17,y-1,barva);PutPixel(x-18,y-1,barva);PutPixel(x-19,y-1,barva);PutPixel(x-20,y-1,barva);
 	PutPixel(x-21,y-1,barva);
 {****************}

 {telo}
 PutPixel(x-15,y-10,barva);PutPixel(x-16,y-10,barva);
 PutPixel(x-15,y-11,barva);PutPixel(x-16,y-11,barva);
 PutPixel(x-15,y-12,barva);PutPixel(x-16,y-12,barva);
 PutPixel(x-15,y-13,barva);PutPixel(x-16,y-13,barva);
 PutPixel(x-15,y-14,barva);PutPixel(x-16,y-14,barva);
 PutPixel(x-15,y-15,barva);PutPixel(x-16,y-15,barva);
 PutPixel(x-15,y-16,barva);PutPixel(x-16,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x-15,y-17,barva);PutPixel(x-14,y-17,barva);
 PutPixel(x-13,y-16,barva);
 PutPixel(x-13,y-15,barva);PutPixel(x-12,y-15,barva);
 PutPixel(x-12,y-14,barva);
 PutPixel(x-12,y-13,barva);PutPixel(x-11,y-13,barva);
 PutPixel(x-11,y-12,barva);PutPixel(x-14,y-12,barva);
 PutPixel(x-11,y-11,barva);PutPixel(x-12,y-11,barva);PutPixel(x-13,y-11,barva);
 PutPixel(x-17,y-13,barva);
 PutPixel(x-17,y-11,barva);
 {****************}

 {prava ruka}
 PutPixel(x-16,y-17,barva);
 PutPixel(x-17,y-16,barva);PutPixel(x-18,y-16,barva);PutPixel(x-19,y-16,barva);
 PutPixel(x-19,y-15,barva);PutPixel(x-20,y-15,barva);
 PutPixel(x-20,y-14,barva);
 PutPixel(x-20,y-13,barva);PutPixel(x-23,y-13,barva);
 PutPixel(x-21,y-12,barva);PutPixel(x-22,y-12,barva);
 PutPixel(x-23,y-11,barva);
 {****************}

 {hlava}
 PutPixel(x-15,y-18,barva);PutPixel(x-16,y-18,barva);
 PutPixel(x-14,y-19,barva);PutPixel(x-15,y-19,barva);PutPixel(x-16,y-19,barva);PutPixel(x-17,y-19,barva);
 PutPixel(x-13,y-20,barva);PutPixel(x-14,y-20,barva);PutPixel(x-15,y-20,barva);PutPixel(x-16,y-20,barva);
 	PutPixel(x-17,y-20,barva);PutPixel(x-18,y-20,barva);
 PutPixel(x-12,y-21,barva);PutPixel(x-13,y-21,barva);PutPixel(x-14,y-21,barva);PutPixel(x-15,y-21,barva);
 	PutPixel(x-16,y-21,barva);PutPixel(x-17,y-21,barva);PutPixel(x-18,y-21,barva);PutPixel(x-19,y-21,barva);
 PutPixel(x-12,y-22,barva);PutPixel(x-13,y-22,barva);PutPixel(x-14,y-22,barva);PutPixel(x-15,y-22,barva);
 	PutPixel(x-16,y-22,barva1);PutPixel(x-17,y-22,barva1);PutPixel(x-18,y-22,barva);PutPixel(x-19,y-22,barva);
 PutPixel(x-13,y-23,barva);PutPixel(x-14,y-23,barva);PutPixel(x-15,y-23,barva);PutPixel(x-16,y-23,barva1);
 	PutPixel(x-17,y-23,barva);PutPixel(x-18,y-23,barva);
 PutPixel(x-14,y-24,barva);PutPixel(x-15,y-24,barva);PutPixel(x-16,y-24,barva);PutPixel(x-17,y-24,barva);
 PutPixel(x-15,y-25,barva);PutPixel(x-16,y-25,barva);
 {*******************}
     end;

procedure skok1ru;  {right,up}
	begin
 {prava noha}
 PutPixel(x+7,y-9,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 {*************}

 {leva noha}
 x:=x+1;y:=y+1;
 PutPixel(x+6,y-9,barva);
 PutPixel(x+5,y-8,barva);
 PutPixel(x+5,y-7,barva);
 PutPixel(x+5,y-6,barva);PutPixel(x+6,y-6,barva);
 PutPixel(x+5,y-5,barva);PutPixel(x+6,y-5,barva);
 PutPixel(x+6,y-4,barva);
 PutPixel(x+5,y-3,barva);PutPixel(x+6,y-3,barva);PutPixel(x+7,y-3,barva);
 PutPixel(x+4,y-2,barva);PutPixel(x+5,y-2,barva);PutPixel(x+6,y-2,barva);PutPixel(x+7,y-2,barva);PutPixel(x+8,y-2,barva);
 PutPixel(x+4,y-1,barva);PutPixel(x+5,y-1,barva);PutPixel(x+6,y-1,barva);PutPixel(x+7,y-1,barva);PutPixel(x+8,y-1,barva);
 {****************}

 {telo}
 y:=y+2;
 PutPixel(x+6,y-10,barva);PutPixel(x+7,y-10,barva);
 PutPixel(x+6,y-11,barva);PutPixel(x+7,y-11,barva);
 PutPixel(x+6,y-12,barva);PutPixel(x+7,y-12,barva);
 PutPixel(x+6,y-13,barva);PutPixel(x+7,y-13,barva);
 PutPixel(x+6,y-14,barva);PutPixel(x+7,y-14,barva);
 PutPixel(x+6,y-15,barva);PutPixel(x+7,y-15,barva);
 PutPixel(x+6,y-16,barva);PutPixel(x+7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x+6,y-17,barva);PutPixel(x+5,y-17,barva);
 PutPixel(x+4,y-16,barva);
 PutPixel(x+4,y-15,barva);PutPixel(x+3,y-15,barva);
 PutPixel(x+3,y-14,barva);
 PutPixel(x+3,y-13,barva);
 PutPixel(x+3,y-12,barva);
 PutPixel(x+3,y-11,barva);
 PutPixel(x+4,y-10,barva);
 PutPixel(x+3,y-9,barva);
 {****************}

 {prava ruka}
 PutPixel(x+8,y-16,barva);
 PutPixel(x+9,y-15,barva);
 PutPixel(x+9,y-14,barva);
 PutPixel(x+9,y-13,barva);
 PutPixel(x+9,y-12,barva);PutPixel(x+10,y-12,barva);
 PutPixel(x+10,y-11,barva);
 PutPixel(x+10,y-11,barva);
 PutPixel(x+9,y-10,barva);PutPixel(x+11,y-10,barva);
 {****************}

 {hlava}
 y:=y+1;
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

procedure skok1lu;  {right,up}
	begin
 {prava noha}
 PutPixel(x-7,y-9,barva);
 PutPixel(x-9,y-7,barva);PutPixel(x-10,y-7,barva);
 PutPixel(x-10,y-6,barva);
 PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);
 PutPixel(x-11,y-4,barva);
 PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 {*************}

 {leva noha}
 x:=x-1;y:=y+1;
 PutPixel(x-6,y-9,barva);
 PutPixel(x-5,y-8,barva);
 PutPixel(x-5,y-7,barva);
 PutPixel(x-5,y-6,barva);PutPixel(x-6,y-6,barva);
 PutPixel(x-5,y-5,barva);PutPixel(x-6,y-5,barva);
 PutPixel(x-6,y-4,barva);
 PutPixel(x-5,y-3,barva);PutPixel(x-6,y-3,barva);PutPixel(x-7,y-3,barva);
 PutPixel(x-4,y-2,barva);PutPixel(x-5,y-2,barva);PutPixel(x-6,y-2,barva);PutPixel(x-7,y-2,barva);PutPixel(x-8,y-2,barva);
 PutPixel(x-4,y-1,barva);PutPixel(x-5,y-1,barva);PutPixel(x-6,y-1,barva);PutPixel(x-7,y-1,barva);PutPixel(x-8,y-1,barva);
 {****************}

 {telo}
 y:=y+2;
 PutPixel(x-6,y-10,barva);PutPixel(x-7,y-10,barva);
 PutPixel(x-6,y-11,barva);PutPixel(x-7,y-11,barva);
 PutPixel(x-6,y-12,barva);PutPixel(x-7,y-12,barva);
 PutPixel(x-6,y-13,barva);PutPixel(x-7,y-13,barva);
 PutPixel(x-6,y-14,barva);PutPixel(x-7,y-14,barva);
 PutPixel(x-6,y-15,barva);PutPixel(x-7,y-15,barva);
 PutPixel(x-6,y-16,barva);PutPixel(x-7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x-6,y-17,barva);PutPixel(x-5,y-17,barva);
 PutPixel(x-4,y-16,barva);
 PutPixel(x-4,y-15,barva);PutPixel(x-3,y-15,barva);
 PutPixel(x-3,y-14,barva);
 PutPixel(x-3,y-13,barva);
 PutPixel(x-3,y-12,barva);
 PutPixel(x-3,y-11,barva);
 PutPixel(x-4,y-10,barva);
 PutPixel(x-3,y-9,barva);
 {****************}

 {prava ruka}
 PutPixel(x-8,y-16,barva);
 PutPixel(x-9,y-15,barva);
 PutPixel(x-9,y-14,barva);
 PutPixel(x-9,y-13,barva);
 PutPixel(x-9,y-12,barva);PutPixel(x-10,y-12,barva);
 PutPixel(x-10,y-11,barva);
 PutPixel(x-10,y-11,barva);
 PutPixel(x-9,y-10,barva);PutPixel(x-11,y-10,barva);
 {****************}

 {hlava}
 y:=y+1;
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
 {*******************}
     end;

procedure skok2ru;
	begin
 {prava noha}
 PutPixel(x+8,y-8,barva);
 PutPixel(x+7,y-9,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 {*************}

 {leva noha}
 x:=x+1;y:=y+1;
 PutPixel(x+6,y-9,barva);
 PutPixel(x+5,y-8,barva);
 PutPixel(x+5,y-7,barva);
 PutPixel(x+5,y-6,barva);PutPixel(x+6,y-6,barva);
 PutPixel(x+5,y-5,barva);PutPixel(x+6,y-5,barva);
 PutPixel(x+6,y-4,barva);
 PutPixel(x+5,y-3,barva);PutPixel(x+6,y-3,barva);PutPixel(x+7,y-3,barva);
 PutPixel(x+4,y-2,barva);PutPixel(x+5,y-2,barva);PutPixel(x+6,y-2,barva);PutPixel(x+7,y-2,barva);PutPixel(x+8,y-2,barva);
 PutPixel(x+4,y-1,barva);PutPixel(x+5,y-1,barva);PutPixel(x+6,y-1,barva);PutPixel(x+7,y-1,barva);PutPixel(x+8,y-1,barva);
 {****************}

 {telo}
 PutPixel(x+6,y-10,barva);PutPixel(x+7,y-10,barva);
 PutPixel(x+6,y-11,barva);PutPixel(x+7,y-11,barva);
 PutPixel(x+6,y-12,barva);PutPixel(x+7,y-12,barva);
 PutPixel(x+6,y-13,barva);PutPixel(x+7,y-13,barva);
 PutPixel(x+6,y-14,barva);PutPixel(x+7,y-14,barva);
 PutPixel(x+6,y-15,barva);PutPixel(x+7,y-15,barva);
 PutPixel(x+6,y-16,barva);PutPixel(x+7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x+6,y-17,barva);PutPixel(x+5,y-17,barva);
 PutPixel(x+4,y-16,barva);
 PutPixel(x+4,y-15,barva);PutPixel(x+3,y-15,barva);
 PutPixel(x+3,y-14,barva);
 PutPixel(x+3,y-13,barva);PutPixel(x+2,y-13,barva);
 PutPixel(x+2,y-12,barva);PutPixel(x+5,y-12,barva);
 PutPixel(x+2,y-11,barva);PutPixel(x+3,y-11,barva);PutPixel(x+4,y-11,barva);
 PutPixel(x+8,y-13,barva);
 PutPixel(x+8,y-11,barva);
 {****************}

 {prava ruka}
 PutPixel(x+7,y-17,barva);
 PutPixel(x+8,y-16,barva);PutPixel(x+9,y-16,barva);PutPixel(x+10,y-16,barva);
 PutPixel(x+10,y-15,barva);PutPixel(x+11,y-15,barva);
 PutPixel(x+11,y-14,barva);
 PutPixel(x+11,y-13,barva);PutPixel(x+14,y-13,barva);
 PutPixel(x+12,y-12,barva);PutPixel(x+13,y-12,barva);
 PutPixel(x+14,y-11,barva);
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

procedure skok2lu;
	begin
 {prava noha}
 PutPixel(x-8,y-8,barva);
 PutPixel(x-7,y-9,barva);
 PutPixel(x-9,y-7,barva);PutPixel(x-10,y-7,barva);
 PutPixel(x-10,y-6,barva);
 PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);
 PutPixel(x-11,y-4,barva);
 PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 {*************}

 {leva noha}
 x:=x-1;y:=y+1;
 PutPixel(x-6,y-9,barva);
 PutPixel(x-5,y-8,barva);
 PutPixel(x-5,y-7,barva);
 PutPixel(x-5,y-6,barva);PutPixel(x-6,y-6,barva);
 PutPixel(x-5,y-5,barva);PutPixel(x-6,y-5,barva);
 PutPixel(x-6,y-4,barva);
 PutPixel(x-5,y-3,barva);PutPixel(x-6,y-3,barva);PutPixel(x-7,y-3,barva);
 PutPixel(x-4,y-2,barva);PutPixel(x-5,y-2,barva);PutPixel(x-6,y-2,barva);PutPixel(x-7,y-2,barva);PutPixel(x-8,y-2,barva);
 PutPixel(x-4,y-1,barva);PutPixel(x-5,y-1,barva);PutPixel(x-6,y-1,barva);PutPixel(x-7,y-1,barva);PutPixel(x-8,y-1,barva);
 {****************}

 {telo}
 PutPixel(x-6,y-10,barva);PutPixel(x-7,y-10,barva);
 PutPixel(x-6,y-11,barva);PutPixel(x-7,y-11,barva);
 PutPixel(x-6,y-12,barva);PutPixel(x-7,y-12,barva);
 PutPixel(x-6,y-13,barva);PutPixel(x-7,y-13,barva);
 PutPixel(x-6,y-14,barva);PutPixel(x-7,y-14,barva);
 PutPixel(x-6,y-15,barva);PutPixel(x-7,y-15,barva);
 PutPixel(x-6,y-16,barva);PutPixel(x-7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x-6,y-17,barva);PutPixel(x-5,y-17,barva);
 PutPixel(x-4,y-16,barva);
 PutPixel(x-4,y-15,barva);PutPixel(x-3,y-15,barva);
 PutPixel(x-3,y-14,barva);
 PutPixel(x-3,y-13,barva);PutPixel(x-2,y-13,barva);
 PutPixel(x-2,y-12,barva);PutPixel(x-5,y-12,barva);
 PutPixel(x-2,y-11,barva);PutPixel(x-3,y-11,barva);PutPixel(x-4,y-11,barva);
 PutPixel(x-8,y-13,barva);
 PutPixel(x-8,y-11,barva);
 {****************}

 {prava ruka}
 PutPixel(x-7,y-17,barva);
 PutPixel(x-8,y-16,barva);PutPixel(x-9,y-16,barva);PutPixel(x-10,y-16,barva);
 PutPixel(x-10,y-15,barva);PutPixel(x-11,y-15,barva);
 PutPixel(x-11,y-14,barva);
 PutPixel(x-11,y-13,barva);PutPixel(x-14,y-13,barva);
 PutPixel(x-12,y-12,barva);PutPixel(x-13,y-12,barva);
 PutPixel(x-14,y-11,barva);
 {****************}

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
 {*******************}

end;

procedure skok22ru;
	begin
 {prava noha}
 PutPixel(x+8,y-8,barva);
 PutPixel(x+7,y-9,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 {*************}

 {leva noha}
 x:=x+1;y:=y+1;
 PutPixel(x+6,y-9,barva);
 PutPixel(x+5,y-8,barva);
 PutPixel(x+5,y-7,barva);
 PutPixel(x+5,y-6,barva);PutPixel(x+6,y-6,barva);
 PutPixel(x+5,y-5,barva);PutPixel(x+6,y-5,barva);
 PutPixel(x+6,y-4,barva);
 PutPixel(x+5,y-3,barva);PutPixel(x+6,y-3,barva);PutPixel(x+7,y-3,barva);
 PutPixel(x+4,y-2,barva);PutPixel(x+5,y-2,barva);PutPixel(x+6,y-2,barva);PutPixel(x+7,y-2,barva);PutPixel(x+8,y-2,barva);
 PutPixel(x+4,y-1,barva);PutPixel(x+5,y-1,barva);PutPixel(x+6,y-1,barva);PutPixel(x+7,y-1,barva);PutPixel(x+8,y-1,barva);
 {****************}

 {telo}
 PutPixel(x+6,y-10,barva);PutPixel(x+7,y-10,barva);
 PutPixel(x+6,y-11,barva);PutPixel(x+7,y-11,barva);
 PutPixel(x+6,y-12,barva);PutPixel(x+7,y-12,barva);
 PutPixel(x+6,y-13,barva);PutPixel(x+7,y-13,barva);
 PutPixel(x+6,y-14,barva);PutPixel(x+7,y-14,barva);
 PutPixel(x+6,y-15,barva);PutPixel(x+7,y-15,barva);
 PutPixel(x+6,y-16,barva);PutPixel(x+7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x+5,y-15,barva);
 PutPixel(x+5,y-14,barva);
 PutPixel(x+6,y-12,barva);PutPixel(x+7,y-12,barva);
 PutPixel(x+8,y-15,barva);
 PutPixel(x+12,y-15,barva);
 PutPixel(x+13,y-16,barva);
 PutPixel(x+14,y-17,barva);
 PutPixel(x+13,y-18,barva);
 PutPixel(x+15,y-16,barva);
 {****************}

 {prava ruka}
 y:=y+3;
 PutPixel(x+7,y-19,barva);PutPixel(x+8,y-19,barva);PutPixel(x+9,y-19,barva);PutPixel(x+10,y-19,barva);
 	PutPixel(x+11,y-19,barva);
 PutPixel(x+11,y-18,barva);PutPixel(x+12,y-18,barva);PutPixel(x+13,y-18,barva);
 PutPixel(x+13,y-19,barva); PutPixel(x+14,y-19,barva); PutPixel(x+15,y-19,barva);
 PutPixel(x+16,y-20,barva);
 PutPixel(x+15,y-21,barva);PutPixel(x+17,y-21,barva);
 y:=y-2;
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

procedure skok22lu;
	begin
 {prava noha}
 PutPixel(x-8,y-8,barva);
 PutPixel(x-7,y-9,barva);
 PutPixel(x-9,y-7,barva);PutPixel(x-10,y-7,barva);
 PutPixel(x-10,y-6,barva);
 PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);
 PutPixel(x-11,y-4,barva);
 PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 {*************}

 {leva noha}
 x:=x-1;y:=y+1;
 PutPixel(x-6,y-9,barva);
 PutPixel(x-5,y-8,barva);
 PutPixel(x-5,y-7,barva);
 PutPixel(x-5,y-6,barva);PutPixel(x-6,y-6,barva);
 PutPixel(x-5,y-5,barva);PutPixel(x-6,y-5,barva);
 PutPixel(x-6,y-4,barva);
 PutPixel(x-5,y-3,barva);PutPixel(x-6,y-3,barva);PutPixel(x-7,y-3,barva);
 PutPixel(x-4,y-2,barva);PutPixel(x-5,y-2,barva);PutPixel(x-6,y-2,barva);PutPixel(x-7,y-2,barva);PutPixel(x-8,y-2,barva);
 PutPixel(x-4,y-1,barva);PutPixel(x-5,y-1,barva);PutPixel(x-6,y-1,barva);PutPixel(x-7,y-1,barva);PutPixel(x-8,y-1,barva);
 {****************}

 {telo}
 PutPixel(x-6,y-10,barva);PutPixel(x-7,y-10,barva);
 PutPixel(x-6,y-11,barva);PutPixel(x-7,y-11,barva);
 PutPixel(x-6,y-12,barva);PutPixel(x-7,y-12,barva);
 PutPixel(x-6,y-13,barva);PutPixel(x-7,y-13,barva);
 PutPixel(x-6,y-14,barva);PutPixel(x-7,y-14,barva);
 PutPixel(x-6,y-15,barva);PutPixel(x-7,y-15,barva);
 PutPixel(x-6,y-16,barva);PutPixel(x-7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x-5,y-15,barva);
 PutPixel(x-5,y-14,barva);
 PutPixel(x-6,y-12,barva);PutPixel(x-7,y-12,barva);
 PutPixel(x-8,y-15,barva);
 PutPixel(x-12,y-15,barva);
 PutPixel(x-13,y-16,barva);
 PutPixel(x-14,y-17,barva);
 PutPixel(x-13,y-18,barva);
 PutPixel(x-15,y-16,barva);
 {****************}

 {prava ruka}
 y:=y+3;
 PutPixel(x-7,y-19,barva);PutPixel(x-8,y-19,barva);PutPixel(x-9,y-19,barva);PutPixel(x-10,y-19,barva);
 	PutPixel(x-11,y-19,barva);
 PutPixel(x-11,y-18,barva);PutPixel(x-12,y-18,barva);PutPixel(x-13,y-18,barva);
 PutPixel(x-13,y-19,barva); PutPixel(x-14,y-19,barva); PutPixel(x-15,y-19,barva);
 PutPixel(x-16,y-20,barva);
 PutPixel(x-15,y-21,barva);PutPixel(x-17,y-21,barva);
 y:=y-2;
 {****************}

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
 {*******************}

end;

procedure skok23ru;
	begin
 {prava noha}
 PutPixel(x+8,y-8,barva);
 PutPixel(x+7,y-9,barva);
 PutPixel(x+9,y-7,barva);PutPixel(x+10,y-7,barva);
 PutPixel(x+10,y-6,barva);
 PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
 PutPixel(x+11,y-4,barva);
 PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 {*************}

 {leva noha}
 x:=x+1;y:=y+1;
 PutPixel(x+6,y-9,barva);
 PutPixel(x+5,y-8,barva);
 PutPixel(x+5,y-7,barva);
 PutPixel(x+5,y-6,barva);PutPixel(x+6,y-6,barva);
 PutPixel(x+5,y-5,barva);PutPixel(x+6,y-5,barva);
 PutPixel(x+6,y-4,barva);
 PutPixel(x+5,y-3,barva);PutPixel(x+6,y-3,barva);PutPixel(x+7,y-3,barva);
 PutPixel(x+4,y-2,barva);PutPixel(x+5,y-2,barva);PutPixel(x+6,y-2,barva);PutPixel(x+7,y-2,barva);PutPixel(x+8,y-2,barva);
 PutPixel(x+4,y-1,barva);PutPixel(x+5,y-1,barva);PutPixel(x+6,y-1,barva);PutPixel(x+7,y-1,barva);PutPixel(x+8,y-1,barva);
 {****************}

 {telo}
 PutPixel(x+6,y-10,barva);PutPixel(x+7,y-10,barva);
 PutPixel(x+6,y-11,barva);PutPixel(x+7,y-11,barva);
 PutPixel(x+6,y-12,barva);PutPixel(x+7,y-12,barva);
 PutPixel(x+6,y-13,barva);PutPixel(x+7,y-13,barva);
 PutPixel(x+6,y-14,barva);PutPixel(x+7,y-14,barva);
 PutPixel(x+6,y-15,barva);PutPixel(x+7,y-15,barva);
 PutPixel(x+6,y-16,barva);PutPixel(x+7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x+5,y-15,barva);
 PutPixel(x+5,y-14,barva);
 PutPixel(x+6,y-12,barva);PutPixel(x+7,y-12,barva);
 PutPixel(x+8,y-15,barva);
 {****************}

 {prava ruka}
 y:=y+3;
 PutPixel(x+7,y-19,barva);PutPixel(x+8,y-19,barva);PutPixel(x+9,y-19,barva);
 PutPixel(x+10,y-20,barva);
 y:=y-3;
 PutPixel(x+11,y-18,barva);PutPixel(x+12,y-18,barva);PutPixel(x+13,y-18,barva);
 PutPixel(x+13,y-19,barva); PutPixel(x+14,y-19,barva); PutPixel(x+15,y-19,barva);
 PutPixel(x+16,y-20,barva);
 PutPixel(x+15,y-21,barva);PutPixel(x+17,y-21,barva);
 y:=y+1;
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

procedure skok23lu;
	begin
 {prava noha}
 PutPixel(x-8,y-8,barva);
 PutPixel(x-7,y-9,barva);
 PutPixel(x-9,y-7,barva);PutPixel(x-10,y-7,barva);
 PutPixel(x-10,y-6,barva);
 PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);
 PutPixel(x-11,y-4,barva);
 PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 {*************}

 {leva noha}
 x:=x-1;y:=y+1;
 PutPixel(x-6,y-9,barva);
 PutPixel(x-5,y-8,barva);
 PutPixel(x-5,y-7,barva);
 PutPixel(x-5,y-6,barva);PutPixel(x-6,y-6,barva);
 PutPixel(x-5,y-5,barva);PutPixel(x-6,y-5,barva);
 PutPixel(x-6,y-4,barva);
 PutPixel(x-5,y-3,barva);PutPixel(x-6,y-3,barva);PutPixel(x-7,y-3,barva);
 PutPixel(x-4,y-2,barva);PutPixel(x-5,y-2,barva);PutPixel(x-6,y-2,barva);PutPixel(x-7,y-2,barva);PutPixel(x-8,y-2,barva);
 PutPixel(x-4,y-1,barva);PutPixel(x-5,y-1,barva);PutPixel(x-6,y-1,barva);PutPixel(x-7,y-1,barva);PutPixel(x-8,y-1,barva);
 {****************}

 {telo}
 PutPixel(x-6,y-10,barva);PutPixel(x-7,y-10,barva);
 PutPixel(x-6,y-11,barva);PutPixel(x-7,y-11,barva);
 PutPixel(x-6,y-12,barva);PutPixel(x-7,y-12,barva);
 PutPixel(x-6,y-13,barva);PutPixel(x-7,y-13,barva);
 PutPixel(x-6,y-14,barva);PutPixel(x-7,y-14,barva);
 PutPixel(x-6,y-15,barva);PutPixel(x-7,y-15,barva);
 PutPixel(x-6,y-16,barva);PutPixel(x-7,y-16,barva);
 {***************}

 {leva ruka}
 PutPixel(x-5,y-15,barva);
 PutPixel(x-5,y-14,barva);
 PutPixel(x-6,y-12,barva);PutPixel(x-7,y-12,barva);
 PutPixel(x-8,y-15,barva);
 {****************}

 {prava ruka}
 y:=y+3;
 PutPixel(x-7,y-19,barva);PutPixel(x-8,y-19,barva);PutPixel(x-9,y-19,barva);
 PutPixel(x-10,y-20,barva);
 y:=y-3;
 PutPixel(x-11,y-18,barva);PutPixel(x-12,y-18,barva);PutPixel(x-13,y-18,barva);
 PutPixel(x-13,y-19,barva); PutPixel(x-14,y-19,barva); PutPixel(x-15,y-19,barva);
 PutPixel(x-16,y-20,barva);
 PutPixel(x-15,y-21,barva);PutPixel(x-17,y-21,barva);
 y:=y+1;
 {****************}

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
 {*******************}

end;

procedure skok3ru;
	begin
 {prava noha+leva noha}
 PutPixel(x+10,y-2,barva);PutPixel(x+11,y-2,barva);PutPixel(x+12,y-2,barva);
 PutPixel(x+9,y-1,barva);PutPixel(x+10,y-1,barva);PutPixel(x+11,y-1,barva);PutPixel(x+12,y-1,barva);PutPixel(x+13,y-1,barva);
 PutPixel(x+9,y,barva);PutPixel(x+10,y,barva);PutPixel(x+11,y,barva);PutPixel(x+12,y,barva);PutPixel(x+13,y,barva);
 	PutPixel(x+14,y,barva);
 PutPixel(x+10,y-3,barva);PutPixel(x+11,y-3,barva);
 PutPixel(x+10,y-4,barva);PutPixel(x+11,y-4,barva);
 PutPixel(x+9,y-5,barva);PutPixel(x+10,y-5,barva);PutPixel(x+11,y-5,barva);
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

procedure skok3lu;
	begin
 {prava noha+leva noha}
 PutPixel(x-10,y-2,barva);PutPixel(x-11,y-2,barva);PutPixel(x-12,y-2,barva);
 PutPixel(x-9,y-1,barva);PutPixel(x-10,y-1,barva);PutPixel(x-11,y-1,barva);PutPixel(x-12,y-1,barva);PutPixel(x-13,y-1,barva);
 PutPixel(x-9,y,barva);PutPixel(x-10,y,barva);PutPixel(x-11,y,barva);PutPixel(x-12,y,barva);PutPixel(x-13,y,barva);
 	PutPixel(x-14,y,barva);
 PutPixel(x-10,y-3,barva);PutPixel(x-11,y-3,barva);
 PutPixel(x-10,y-4,barva);PutPixel(x-11,y-4,barva);
 PutPixel(x-9,y-5,barva);PutPixel(x-10,y-5,barva);PutPixel(x-11,y-5,barva);
 PutPixel(x-9,y-6,barva);PutPixel(x-10,y-6,barva);
 PutPixel(x-9,y-7,barva);PutPixel(x-10,y-7,barva);
 PutPixel(x-8,y-8,barva);PutPixel(x-9,y-8,barva);
 PutPixel(x-8,y-9,barva);PutPixel(x-9,y-9,barva);
 {*******************}

 {telo}
 PutPixel(x-8,y-10,barva);PutPixel(x-9,y-10,barva);
 PutPixel(x-8,y-11,barva);PutPixel(x-9,y-11,barva);
 PutPixel(x-8,y-12,barva);PutPixel(x-9,y-12,barva);
 PutPixel(x-8,y-13,barva);PutPixel(x-9,y-13,barva);
 PutPixel(x-8,y-14,barva);PutPixel(x-9,y-14,barva);
 PutPixel(x-8,y-15,barva);PutPixel(x-9,y-15,barva);
 PutPixel(x-8,y-16,barva);PutPixel(x-9,y-16,barva);
 PutPixel(x-8,y-17,barva);PutPixel(x-9,y-17,barva);
 {*********************}

 {prava ruka+leva ruka}
 x:=x-2;
 PutPixel(x-8,y-17,barva);PutPixel(x-9,y-17,barva);
 PutPixel(x-9,Y-18,barva);
 PutPixel(x-10,y-19,barva);
 PutPixel(x-11,y-20,barva);
 PutPixel(x-11,y-21,barva);PutPixel(x-12,y-21,barva);
 PutPixel(x-12,y-22,barva);
 PutPixel(x-12,y-22,barva);
 PutPixel(x-12,y-22,barva);
 PutPixel(x-13,y-23,barva);
 PutPixel(x-13,y-24,barva);PutPixel(x-14,y-24,barva);
 PutPixel(x-13,y-25,barva);PutPixel(x-14,y-25,barva);
 PutPixel(x-13,y-26,barva);PutPixel(x-14,y-26,barva);
 PutPixel(x-13,y-27,barva);PutPixel(x-14,y-27,barva);
 PutPixel(x-13,y-28,barva);PutPixel(x-15,y-28,barva);
 PutPixel(x-12,y-29,barva);PutPixel(x-14,y-29,barva);
 {****************}

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
 {*******************}

end;


end.