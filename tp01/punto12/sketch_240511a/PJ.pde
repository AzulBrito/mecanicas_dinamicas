class PJ{
 float x, y;
 float direccion;
 PImage tanque;
  PJ(){
    tanque=loadImage("tanque.png");
    x=width/2;
    y=height/2;
    tanque.resize(50,50);
  }
  void dibujar(){
    imageMode(CENTER);
    pushMatrix();
    translate(x, y);
    if (abs(direccionX) <= 1 && abs(direccionY) <= 1) {
      float angle = atan2(direccionY, direccionX);
      rotate(angle);
    }
    image(tanque, 0, 0);
    popMatrix();
  
  }
  void mover(){
   x=mouseX;
   y=mouseY;
  }
}
