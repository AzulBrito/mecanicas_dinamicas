GameObject player;
GameObject enemy;
boolean detected = false;
float bulletSpeed = 5;
float bulletX, bulletY;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
PImage imagenPj;
PImage fuego;
PImage malo;


void setup() {
  size(800, 400);
  //Inicializar jugador y enemigo
  player = new GameObject(width/2, height/2, 0);
  enemy = new GameObject(width/4, height/4, PI/4);
  imagenPj= loadImage("pj.png");
  fuego= loadImage("fuego.png");
  malo= loadImage("bowser.png");
}

void draw() {
  background(200);
   player.actualizarPosicion(mouseX, mouseY);
  
  //Dibujar jugador y enemigo
  enemigo();
  imagenPj.resize(50,50);
  image(imagenPj, player.x, player.y);
  
  detected = detectPlayer(enemy, player);
  if (detected) {
    attack(enemy, player);
  }
  
  //Mostrar mensaje si detectado en el centro de la pantalla
  if (detected) {
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Fuiste detectado!", width/2, height/2);
  }
  
   for (Bullet bullet : bullets) {
    bullet.move();
    image(fuego,bullet.x,bullet.y);
    fuego.resize(30,30);
  }
}

void enemigo(){
  image(malo,enemy.x, enemy.y);
  malo.resize(80,80);
}

boolean detectPlayer(GameObject enemy, GameObject player) {
  float enemyPlayerX = player.x - enemy.x;
  float enemyPlayerY = player.y - enemy.y;
  float enemyDirectionX = cos(enemy.direction);
  float enemyDirectionY = sin(enemy.direction);
  float dotProduct = enemyPlayerX * enemyDirectionX + enemyPlayerY * enemyDirectionY;
  float cosAngle = cos(PI/6);
  return dotProduct > cosAngle;
}



void attack(GameObject enemy, GameObject player) {
  // Calcular dirección hacia el jugador
  float dx = player.x - enemy.x;
  float dy = player.y - enemy.y;
  float directionToPlayer = atan2(dy, dx);
  //Crear una nueva bala que se dirige hacia el jugador
  bullets.add(new Bullet(enemy.x, enemy.y, 5, directionToPlayer));
}
