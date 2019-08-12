public class BasicBallButton extends Button {
  public BasicBallButton(int x, int y) {
    super(x, y);  
  }
  
  public void clicked() {
    basicBalls.add(new BasicBall(width/2, height/2)); 
    print("clicked");
  }
}
