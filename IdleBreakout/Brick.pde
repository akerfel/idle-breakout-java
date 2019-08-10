public class Brick {
  int x;
  int y;
  int hp = 1;
  
  int w = 100;
  int h = 25; 
  
  public Brick(int x, int y, int hp) {
      this.x = x;
      this.y = y;
  }
  
  public void draw() {
    rect(x, y, w, h);
  }
}
