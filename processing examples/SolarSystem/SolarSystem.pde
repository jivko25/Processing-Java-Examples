float theta = 0;
float earthSize = 32;
int colorJ1 = 153;
int colorJ2 = 115;
boolean flag = true;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(0);
  stroke(0);

  // Translate to center of window to draw the sun.
  translate(width/2, height/2);
  fill(255, 200, 50);
  ellipse(0, 0, 200, 200);

  //Mercury
  pushMatrix();
  rotate(theta*5);
  translate(150, 0);
  fill(219, 206, 202);
  ellipse(0, 0, earthSize*0.4, earthSize*0.4);
  popMatrix();
  
  //Venus
  pushMatrix();
  rotate(theta*2);
  translate(200, 0);
  fill(255, 240, 179);
  ellipse(0, 0, earthSize*0.9, earthSize*0.9);
  popMatrix();

  //Earth
  pushMatrix();
  rotate(theta);
  translate(250, 0);
  fill(50, 200, 255);
  ellipse(0, 0, earthSize, earthSize);
  
  
  //Moon
  pushMatrix(); 
  rotate(-theta*4);
  translate(25, 0);
  fill(202, 202, 202);
  ellipse(0, 0, 12, 12);
  popMatrix();
  
  popMatrix();
  
  //Mars
  pushMatrix();
  rotate(theta*2);
  translate(290, 0);
  fill(204, 102, 0);
  ellipse(0, 0, earthSize*0.5, earthSize*0.5);
  
  pushMatrix();
  rotate(theta*2);
  translate(20, 0);
  fill(202, 202, 202);
  ellipse(0, 0, 5, 5);
  popMatrix();
  
  popMatrix();
  
  
  //Jupiter
  pushMatrix();
  rotate(theta*0.8);
  translate(380, 0);
  if(colorJ1 >= 204){
   flag = false; 
  }
  else if(colorJ1 <= 153){
   flag = true; 
  }
  if(flag){
  colorJ1++;
  colorJ2++;
  }
  else{
  colorJ1--;
  colorJ2--; 
  }
  fill(colorJ1, colorJ2, 0);
  ellipse(0, 0, earthSize*3, earthSize*3);
  
  pushMatrix();
  rotate(theta*3);
  translate(55, 0);
  fill(202, 202, 202);
  ellipse(0, 0, 5, 5);
  popMatrix();
  
    pushMatrix();
  rotate(-theta*1.5);
  translate(65, 0);
  fill(202, 202, 202);
  ellipse(0, 0, 5, 5);
  popMatrix();
  
    pushMatrix();
  rotate(theta*1.8);
  translate(75, 0);
  fill(202, 202, 202);
  ellipse(0, 0, 5, 5);
  popMatrix();
  
  popMatrix();
  
  pushMatrix();
  rotate(theta);
  translate(500, 0);
  fill(255, 255, 0);
  ellipse(0, 0, earthSize*2.5, earthSize*2.5);
  fill(0);
  ellipse(0, 0, earthSize*2.5 - 15, earthSize*2.5 - 15);
  fill(255, 255, 0);
  ellipse(0, 0, earthSize*2.5 - 30, earthSize*2.5 - 30);
  popMatrix();

  //popMatrix();

  theta += 0.01;
}
