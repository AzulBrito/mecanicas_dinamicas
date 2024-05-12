class PJ{
 float x, y;
 float direccion;
 PImage tanque;
 Objetivo objetivo;
 
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
    
    float dx = x - objetivo.x;
    float dy = y - objetivo.y; 
    float distancia = sqrt(dx * dx + dy * dy);

    if (distancia <= 200) {
      float angle = atan2(dy, dx);
      rotate(angle);
    }
  
    image(tanque, 0, 0);
    popMatrix();
  
  }
  void mover(){
   x=mouseX;
   y=mouseY;
  }
  void setObjetivo(Objetivo objetivo){
    this.objetivo=objetivo;
  }
  
}
