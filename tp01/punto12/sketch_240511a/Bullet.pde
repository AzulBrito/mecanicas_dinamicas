class Bullet{
 float x, y, d;
 int velocidad;
  boolean remover;
  float direccionX, direccionY;
  float objetivoX, objetivoY;
  
  
  //constructor
  Bullet(float inicioX, float inicioY, float objetivoX, float objetivoY){
    x= inicioX;
    y= inicioY;
    this.objetivoX= objetivoX;
    this.objetivoY= objetivoY;
    
    d= 15;
    velocidad=15;
    
    remover=false;
     calcularDireccion();
  }
  void dibujar(){
    circle(x,y,d);
  }
  
void mover() {
  float dx = objetivoX - x;
  float dy = objetivoY - y;
  float distancia = sqrt(dx * dx + dy * dy);

  if (distancia <= 10) { 
    remover = true;
  } else {
    float magnitud = sqrt(dx * dx + dy * dy);
    direccionX = dx / magnitud;
    direccionY = dy / magnitud;

    float desplazamientoX = direccionX * velocidad;
    float desplazamientoY = direccionY * velocidad;
    x += desplazamientoX;
    y += desplazamientoY;
  }
}

void Remover(){
 if (y==width){
  remover=true; 
 }
}
void calcularDireccion() {
    float dx = objetivoX - x;
    float dy = objetivoY - y;
    float magnitud = sqrt(dx * dx + dy * dy);
    direccionX = dx / magnitud;
    direccionY = 0 / magnitud;
  }

}
