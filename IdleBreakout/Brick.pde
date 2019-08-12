public class Brick {
  public int x;
  public int y;
  public int w;
  public int h;
  
  public int hp;
  color currentColor;
 
  
  public Brick(int x, int y, int w, int h, int hp) {
      this.x = x;
      this.y = y;
      this.w = w;
      this.h = h;
      this.hp = hp;
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
    gold++;
    if (hp != -1) {  //hp -1 means invincible
      hp--;
    }
  }
  
  public void draw() {
    currentColor = selectColor();
    fill(currentColor);  // 
    rect(x, y, w, h);
    if (hp != -1) {
      fill(textColor);
      textSize(18);
      text(str(hp), x + 32, y + 18);
    }
  }
}
