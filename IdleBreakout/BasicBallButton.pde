public class BasicBallButton extends Button {
    float price;

    public BasicBallButton(int x, int y) {
        super(x, y);
        this.price = 25;
    }

    public void clicked() {
        if (gold >= this.price) {
            basicBalls.add(new BasicBall(width/2, height/2));
            gold -= this.price;
            this.price *= 1.5;
            this.price = floor(this.price);
        }
    }

    public void draw() {
        // Draw smaller lower rectangle, which holds the this.price text
        fill(color(255, 255, 255));
        rect(x, y, w, h);
        rect(x, y + h - 15, w, 15);

        // Draw text
        textSize(14);
        fill(textColor);
        String strprice = str(this.price);
        text(strprice, x + 25, y + 42);

        // Draw ball icon
        fill(basicBallColor);
        rect(x + 20, y + 7, basicBallSide, basicBallSide);
    }
}
