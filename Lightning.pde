int startX = 101;
int startY = 356;
int endX = 0;
int endY = 150;
int randomX;
int randomY;
int segment = 0;
int total = 0;

void setup() {
  size(500,500);
  background(182, 197, 195);
  image(loadImage("wand.png"), 0, 350, width/4, height/4);
  image(loadImage("volde.png"), 350, 40, width/4, height/4);
  frameRate(10);
}

void draw() {
  stroke(255, 255, 255);
  while(segment < 4) {
    randomX = (int)(Math.random()*100);
    randomY = (int)(Math.random()*100) - 120;
    endX = startX + randomX;
    endY = startY + randomY;
    if (segment < 3) {
      line(startX, startY, endX, endY);
    } else {
      line(startX, startY, 405, 80);
    }
    startX = endX;
    startY = endY;
    segment = segment + 1;
  }
  total = total + 1;
  image(loadImage("volde.png"), 350, 40, width/4, height/4);
  noStroke();
  fill(0,0,0);
}

void mousePressed() {
  System.out.println(total);
  startX = 101;
  startY = 356;
  endX = 101;
  endY = 356;
  segment = 0;
  redraw();
}
