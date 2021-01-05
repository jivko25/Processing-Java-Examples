int direction;

void setup(){
 size(640, 500);
 frameRate(120);
 background(0);
}

float x = random(0, 640);
float y = random(0, 500);
boolean flagX = true;
boolean flagY = true;


void draw(){
 float colorX = map(x, 0, 500, 0, 255);
 float colorY = map(y, 0, 640, 0, 255);
 
 stroke(colorX, 0, colorY);
 //fill(colorX, 0, colorY );
 noFill();
 //ellipse(x, y, 50, 50);
 rotate(PI*random(0, 0.5));
 scale(random(1, 3));
 triangle(x, y, x - random(10, 20), y + random(10, 20), x + random(10, 20), y - random(10, 20));
 
 if(flagX){
   x++;
 } else{
   x--;
 }
 
 if(x>590){
  flagX = false; 
 }
 if(x<50) {
  flagX = true; 
 }
 
  if(flagY){
   y++;
 } else{
   y--;
 }
 
 if(y>450){
  flagY = false; 
 }
 if(y<50) {
  flagY = true; 
 }
 
}
