class Objetivo{
 PImage objetivo;
 float x, y;
 int velocidad = 5;
  boolean moviendoAbajo = true;
  
 Objetivo(){
  objetivo=loadImage("objetivo.png"); 
  x=width/2;
  y=200;
 }
 void dibujar(){
  imageMode(CENTER);
  image(objetivo,x,y);
  objetivo.resize(80, 80);
 }

  /*void mover() {
    if (moviendoAbajo) {
      y += velocidad;
    } else {
      y -= velocidad;
    }
    
    if (y >= height - objetivo.height / 2) {
      moviendoAbajo = false;
    }
    
    if (y <= objetivo.height / 2) {
      moviendoAbajo = true;
    }
  }*/
}
