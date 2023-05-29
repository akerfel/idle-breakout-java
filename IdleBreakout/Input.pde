void mousePressed() {
    for (Brick brick : bricks) {
        if (brick.mouseOn()) {
            brick.damage();
        }
    }

    for (Button button : buttons) {
        if (mouseX >= button.x && mouseX <= button.x + button.w && mouseY >= button.y && mouseY <= button.y + height) {
            button.clicked();
        }
    }
}
