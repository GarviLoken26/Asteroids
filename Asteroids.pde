Player ship;
ArrayList<GameObject> drawables = new ArrayList<GameObject>();

void setup(){
  size(1024, 768);
  ship = new Player("ship.png", new Vector2(512, 384));
  ship.transform.Rotate(60);
}

void draw() {
  background(0);
  ship.ProcessInput();

  for (int i = drawables.size() - 1; i >= 0; i--) {
    GameObject go = drawables.get(i);
    if (go instanceof Bullet) {
      ((Bullet) go).Update();
    }
    go.Display();
  }
}
