class Player extends GameObject{
 
  Player(String image, Vector2 initPos){
    super(image, initPos);
  }

  void ProcessInput(){   
  if (keyPressed) {
  float angle = transform.rotation * (PI/180);
  float speed = 5;
  if (key == 'w') {
   float dx = cos(angle + 80)  *speed;
   float dy = sin(angle + 80)  *speed;
   transform.Translate(new Vector2(dx, dy));}
  if (key == 's') {
    float dx = -cos(angle +80) * 5;
    float dy = -sin(angle +80) * 5;
    transform.Translate(new Vector2(dx,dy));}
  if (key == 'a') transform.Rotate (-5);
  if (key == 'd') transform.Rotate (5);
  if (key == ' ') {Vector2 bulletStart = new Vector2(
        transform.position.x + cos(angle +80) * 20, 
        transform.position.y + sin(angle +80) * 20);
        
      new Bullet(bulletStart, transform.rotation);
    }
  }
}
}
