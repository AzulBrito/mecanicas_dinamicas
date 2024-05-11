GameObject player;
GameObject enemy;
boolean detected = false;
float bulletSpeed = 5;
float bulletX, bulletY;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

void setup() {
  size(800, 400);
  //Inicializar jugador y enemigo
  player = new GameObject(width/2, height/2, 0);
  enemy = new GameObject(width/4, height/4, PI/4);
  noStroke();
}

void draw() {
  background(200);
  player.x = mouseX;
  player.y = mouseY;
  
  //Dibujar jugador y enemigo
  drawGameObject(player, color(0, 0, 255));
  drawGameObject(enemy, color(255, 0, 0));
  detected = detectPlayer(enemy, player);
  if (detected) {
    attack(enemy, player);
  }
  
  // Mostrar mensaje si detectado
  if (detected) {
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Fuiste detectado!", width/2, height/2);
  }
  
   for (Bullet bullet : bullets) {
    bullet.move();
    fill(255, 0, 0);
    ellipse(bullet.x, bullet.y, 10, 10);
  }
}

void drawGameObject(GameObject obj, color col) {
  fill(col);
  ellipse(obj.x, obj.y, 20, 20);  // Representación visual de los gameObject
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
