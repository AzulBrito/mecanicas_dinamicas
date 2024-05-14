public class Bird {
  private PVector pos;

  public Bird() {
    this.pos = new PVector(-1000, height/2);
  }
  
  public PVector getPos(){ return this.pos; }
  public void setPos(PVector pos){ this.pos = pos; }

  public void move(float a, float b, float c) {
    this.getPos().y = a * pow(this.getPos().x, 2) + b * this.getPos().x + c;  //función
    this.getPos().x += 10;
  }
  
  public void display(){
    ellipseMode(CENTER);
    fill(#ff8a8a);
    circle(this.getPos().x, this.getPos().y, 40);
  }
}
