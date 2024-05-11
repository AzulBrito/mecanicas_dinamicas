class GameObject {
  float x;
  float y;
  float direction;
  
  GameObject(float x, float y, float direction) {
    this.x = x;
    this.y = y;
    this.direction = direction;
  }
   void actualizarPosicion(float mouseX, float mouseY) {
    x = mouseX;
    y = mouseY;
  }
}
