import java.util.Iterator;

void removeDeadBricks() {
  Iterator<Brick> iterator = bricks.iterator();
  
  while (iterator.hasNext()) {
    Brick brick = iterator.next();
    if (brick.hp == 0) {
      iterator.remove();  
    }
  }
}
