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
 float colorY = map(x, 0, 640, 0, 255);
 
 stroke(colorX, 0, colorY);
 fill(colorX, 0, colorY );
 ellipse(x, y, 50, 50);
 
 
 if(flagX){
   x+=3;
 } else{
   x-=3;
 }
 
 if(x>590){
  flagX = false; 
 }
 if(x<50) {
  flagX = true; 
 }
 
  if(flagY){
   y+=3;
 } else{
   y-=3;
 }
 
 if(y>450){
  flagY = false; 
 }
 if(y<50) {
  flagY = true; 
 }
 
}
