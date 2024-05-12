class Bullet{
 float x, y, d;
 int velocidad;
  boolean remover;
  //constructor
  Bullet(float inicioX, float inicioY){
    x= inicioX;
    y= inicioY;
    
    d= 15;
    velocidad=15;
    
    remover=false;
  }
  void dibujar(){
    circle(x,y,d);
  }
  
  void mover(){
  y-=velocidad;
}
void Remover(){
 if (y<0){
  remover=true; 
 }
}

}
