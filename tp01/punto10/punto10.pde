class Vector {
  float x;
  float y;
  
  //Constructor 
  Vector(float x, float y) {
    this.x = x;
    this.y = y;
  }
  Vector add(Vector v) {
    return new Vector(this.x + v.x, this.y + v.y);
  }
  
  // resta dos vectores y obtiene un nuevo vector resultante
  Vector subtract(Vector v) {
    return new Vector(this.x - v.x, this.y - v.y);
  }
}

void setup() {
  size(400, 400);
  background(0);
  
  // Defini los puntos
  Vector A = new Vector(-1, -2);
  Vector B = new Vector(4, -1);
  Vector C = new Vector(5, 2);
  
  // Calculo el punto D como la suma de los vectores AC
  Vector AC = C.subtract(A);
  Vector D = B.add(AC);
  
  // Dibujar los vectores AB, AC, AD y BC en distintos 
  //colores para diferenciarlos
  drawVector(A, B, color(#FE0DFF));
  drawVector(A, C, color(#810DFF));
  drawVector(B, D, color(#1C0DFF));
  drawVector(C, D, color(#FF0D0D));
}

void drawVector(Vector start, Vector end, color col) {
  stroke(col);
  line(width/2 + start.x * 20, height/2 + start.y * 20, width/2 + end.x * 20, height/2 + end.y * 20);
}
