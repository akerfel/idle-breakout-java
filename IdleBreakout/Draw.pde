public void drawEverything() {
    drawBricks();
    drawBasicBalls();
    drawGold();
    drawLevelNumber();
    drawButtons();
}

public void drawBricks() {
    for (Brick brick : bricks) {
        brick.draw();
    }
}

public void drawBasicBalls() {
    for (BasicBall basicBall : basicBalls) {
        basicBall.draw();
    }
}

public void drawGold() {
    fill(textColor);
    String strGold = str(gold);
    text("$:" + strGold, width - (strGold.length() + 3) * 14, 17);
}

public void drawLevelNumber() {
    textAlign(CENTER);
    fill(textColor);
    String strLevel = str(level);
    text("Level: " + strLevel, width/2, 17);
    textAlign(BASELINE);
}

public void drawButtons() {
    for (Button button : buttons) {
        button.draw();
    }
}
