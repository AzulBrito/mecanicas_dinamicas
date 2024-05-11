class Vector {
  float x;
  float y;
  
  // Constructor que recibe las coordenadas del punto destino
  Vector(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  // Método para sumar dos vectores y obtener un nuevo vector resultante
  Vector add(Vector v) {
    return new Vector(this.x + v.x, this.y + v.y);
  }
  
  // Método para restar dos vectores y obtener un nuevo vector resultante
  Vector subtract(Vector v) {
    return new Vector(this.x - v.x, this.y - v.y);
  }
}

void setup() {
  size(400, 400);
  background(255);
  
  // Definir los puntos A, B, C
  Vector A = new Vector(-1, -2);
  Vector B = new Vector(4, -1);
  Vector C = new Vector(5, 2);
  
  // Calcular el punto D como la suma de los vectores AB y AC
  Vector AB = B.subtract(A);
  Vector AC = C.subtract(A);
  Vector D = B.add(AC);
  
  // Dibujar los vectores AB, AC, AD y BC
  drawVector(A, B, color(255, 0, 0));
  drawVector(A, C, color(0, 255, 0));
  drawVector(B, D, color(0, 0, 255));
  drawVector(C, D, color(0));
}

void drawVector(Vector start, Vector end, color col) {
  stroke(col);
  line(width/2 + start.x * 20, height/2 + start.y * 20, width/2 + end.x * 20, height/2 + end.y * 20);
}
