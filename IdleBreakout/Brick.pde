public class Brick {
  public int x;
  public int y;
  public int w;
  public int h;
  public boolean isWall;
  
  public int hp;
 
  
  public Brick(int x, int y, int w, int h, int hp) {
      this.x = x;
      this.y = y;
      this.w = w;
      this.h = h;
      this.hp = hp;
      this.isWall = false;
  }
  
  public Brick(int x, int y, int w, int h, boolean isWall) {
      this.x = x;
      this.y = y;
      this.w = w;
      this.h = h;
      this.hp = hp;
      this.isWall = isWall;
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
      case 3:
        selectedColor = color(255, 129, 85);
        break;
      default:
        selectedColor = color(255, 255, 255);
        break;
    }
  return selectedColor;
  }
  
  public boolean mouseOn() {
    return mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY < y + h;
  }
  
  public int getHp() {
    return hp;  
  }
  
  public void damage() {
    if (!isWall) {  
      hp--;
      gold++;
    }
  }
  
  public void draw() {
    fill(selectColor()); 
    rect(x, y, w, h);
    if (!isWall) {
      fill(textColor);
      textSize(18);
      text(str(hp), x + 32, y + 18);
    }
  }
}
