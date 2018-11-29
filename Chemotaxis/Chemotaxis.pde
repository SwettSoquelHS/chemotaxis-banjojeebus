Bacteria[] myBacteria;
void setup() {
  size(600, 600);
  smooth();
  background(0);
  noStroke();
  frameRate(30);
  myBacteria = new Bacteria[1000];
  for (int i = 0; i < myBacteria.length; i++) {
    float x = (float)(600*Math.random());
    float y = (float)(600*Math.random());   
    float bColor = (float)(200*Math.random()); 
    myBacteria[i] = new Bacteria(x, y, bColor);
  }
}   
void draw() {    
  frameRate(30);
  background(0);
  noStroke();
  for (int i = 0; i < 1000; i++) {
    myBacteria[i].show();
    myBacteria[i].move();
    
  }
}  
class Bacteria {
  float x_pos;
  float y_pos;
  float bacteriaColor;
  float size;


  public Bacteria(float x, float y, float bColor) {
    x_pos = x;
    y_pos = y;
    bacteriaColor = bColor;
    size = (float)(20*Math.random()); 
  }
  void move() {

    x_pos = x_pos +(float)(Math.random());
    y_pos = y_pos +(float)(Math.random());
 
  }

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(bacteriaColor);
    ellipse(0, 0, size,size);
    popMatrix();
  }
}
