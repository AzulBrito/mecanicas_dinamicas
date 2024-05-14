Bird bird;

float a, b, c;

void setup(){
  size(1100,720);
  
  a = 0.001;
  b = 1;
  c = -100;
  
  bird = new Bird();
}

void draw(){
  background(#222229);  
  noStroke();
    
  translate(1000, height/1.4);
  
  bird.display();
  bird.move(a, b, c);
}
