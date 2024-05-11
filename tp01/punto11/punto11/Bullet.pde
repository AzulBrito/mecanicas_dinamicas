class Bullet {
  float x;
  float y;
  float speed;
  float direction;
  
  Bullet(float x, float y, float speed, float direction) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
  }
    void move() {
    x += cos(direction) * speed;
    y += sin(direction) * speed;
  }
}
