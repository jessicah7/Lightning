int startX = 101;
int startY = 356;
int endX = 0;
int endY = 150;
int randomX;
int randomY;
int line = 0;
int total = 0;
int diameter = 0;

void setup() {
  size(500,500);
  background(182, 197, 195);
  image(loadImage("wand.png"), 0, 350, width/4, height/4);
  image(loadImage("volde.png"), 350, 40, width/4, height/4);
  frameRate(10);
}

void draw() {
  stroke(255, 255, 255);
  while(line < 4) {
    randomX = (int)(Math.random()*100);
    randomY = (int)(Math.random()*100) - 120;
    endX = startX + randomX;
    endY = startY + randomY;
    if (line < 3) {
      line(startX, startY, endX, endY);
    } else {
      line(startX, startY, 405, 80);
    }
    startX = endX;
    startY = endY;
    line = line + 1;
  }
  total = total + 1;
  image(loadImage("volde.png"), 350, 40, width/4, height/4);
  noStroke();
  fill(0,0,0);
  if (total > 29) {
    ellipse(400, 100, diameter, diameter);
    diameter = diameter + 20;
    if (diameter > 380) {
      background(0,0,0);
    }
  }
}

void mousePressed() {
  System.out.println(total);
  startX = 101;
  startY = 356;
  endX = 101;
  endY = 356;
  line = 0;
  redraw();
}

