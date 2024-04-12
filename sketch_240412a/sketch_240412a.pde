PVector posicionPJ;
PVector direccion;

void setup() {
  size(500, 500);
  posicionPJ = new PVector(width / 2, height / 2);
  direccion = new PVector(1, 0);
}

void draw() {
  background(255);
  
  // Actualizar la posición del vector con la posición del mouse
  posicionPJ.set(mouseX, mouseY);
  
  // Dibujar el vector
  stroke(0);
  line(posicionPJ.x, posicionPJ.y, posicionPJ.x + direccion.x * 50, posicionPJ.y + direccion.y * 50);
}
