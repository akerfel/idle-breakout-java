public class Brick {
  int x;
  int y;
  int w = 75;
  int h = 25; 
  
  int hp;
  color currentColor;
  color textColor = color(0, 0, 0);
  
  public Brick(int x, int y, int hp) {
      this.x = x;
      this.y = y;
      this.hp = hp;
  }
  
  public void draw() {
    rectMode(CENTER);
    
    currentColor = selectColor();
    fill(currentColor);  // 
    rect(x, y, w, h);
    fill(textColor);
    textSize(18);
    text(str(hp), x - 5, y + 5);
  }
  
  color selectColor() {
    color selectedColor = color(255, 255, 255);
    switch(hp) {
      case 1: 
        selectedColor = color(85, 213, 255);
        break;
      case 2:
        selectedColor = color(236, 85, 255);
        break;
    }
  return selectedColor;
  }
}
