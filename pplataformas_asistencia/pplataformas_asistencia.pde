Plataforma plataforma, plataforma2;
PImage plataforma1img,plataforma2img;
PImage fondo;

void setup(){
 size (800,800); 
 fondo= loadImage("fondo.jpg");
 fondo.resize(800,800);
 plataforma1img=loadImage("plataforma1.jpg");
 plataforma1img.resize(304, 110);
  plataforma2img=loadImage("plataforma2.jpg");
  plataforma2img.resize(304, 120);
 plataforma = new Plataforma(new PVector(width/2, height/2 - 160), 2, 2, plataforma1img);
  plataforma2 = new Plataforma(new PVector(width/2-170, 700), 2, 3, plataforma2img);
  
}

void draw(){
 background (#D1F9FC);
 image(fondo,0,0);
  textSize(50);
  fill(0);
   text("Tiempo en segundos: " + millis()/1000, 0, 40);
   plataforma.dibujar();
   plataforma.movimientoSino();
   
  plataforma2.dibujar();
  plataforma2.movimientoCos();
}
