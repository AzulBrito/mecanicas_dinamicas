class PJ{
 float x, y;
 float direccion;
 PImage tanque;
  PJ(){
    tanque=loadImage("tanque.png");
  }
  void dibujar(){
    image(tanque,x,y);
    tanque.resize(50,50);
  }
  void mover(){
   x=mouseX;
   y=mouseY;
  }
}
