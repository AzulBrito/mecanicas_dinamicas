class Bullet{
 int x, y, d;
 int velocidad;
  
  //constructor
  Bullet(int inicioX, int inicioY){
    x= inicioX;
    y= inicioY;
    
    d= 5;
    velocidad=15;
  }
  void dibujar(){
    circle(x,y,d);
  }
  
  void mover(){
  y-=velocidad;
}
}
