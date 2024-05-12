class Bullet{
 float x, y, d;
 int velocidad;
  boolean remover;
  float direccionX, direccionY;
  
  
  //constructor
  Bullet(float inicioX, float inicioY){
    x= inicioX;
    y= inicioY;
    
    d= 15;
    velocidad=15;
    
    remover=false;
     calcularDireccion();
  }
  void dibujar(){
    circle(x,y,d);
  }
  
  void mover(){
  y-=velocidad;
}
void Remover(){
 if (y==width){
  remover=true; 
 }
}
void calcularDireccion() {
    float dx = objetivo.x - x;
    float dy = objetivo.y - y;
    float magnitud = sqrt(dx * dx + dy * dy);
    direccionX = dx / magnitud;
    direccionY = dy / magnitud;
  }

}
