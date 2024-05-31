Plataforma plataforma;

void setup(){
 size (800,800); 
 plataforma = new Plataforma(new PVector(width/2, height/2 - 160), 2, 2);
}

void draw(){
 background (#3E3C3C);
  textSize(50);
   text("Tiempo en segundos: " + millis()/1000, 0, 40);
   plataforma.dibujar();
   plataforma.movimientoSino();
   
}
