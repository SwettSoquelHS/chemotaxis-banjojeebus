Star[] stars;


void setup() {  
  size(1000, 900);
  background(0);
  frameRate(24);
  stars = new Star[10];
  for (int i = 0; i < stars.length; i++) {
    int x = (int)(width*Math.random());
    int y = (int)(height*Math.random());   
    int r = (int)(9*Math.random())+2;
    stars[i] = new Star(x, y, r);
  }
}

void draw() {
  fill(0, 35);
  noStroke();
  rect(0, 0, width, height);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
}


/*
  Star class
*/
class Star {
  float x_pos;
  float y_pos;
  float radius;
 
  public Star(float x, float y, float radius) {
    x_pos = x;
    y_pos = y;
    this.radius = radius;
  }
    

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(251, 255, 184);
    ellipse(0, 0, radius, radius);
    popMatrix();
  }
  
  void setX(float x){
    x_pos = x; 
  }
  
  void setY(float y){
    x_pos = y; 
  }
}
