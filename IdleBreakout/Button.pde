public abstract class Button {
  int x;
  int y;
  int w;
  int h;
  
  public Button(int x, int y) {
    this.x = x;
    this.y = y;
    this.w = 30;
    this.h = 20;
  }
  
  public void draw() {
    fill(color(255, 70, 255));
    rect(x, y, w, h);  
  }
  
  
  public void clicked() {
    
  }
}
