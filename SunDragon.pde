float r, s;

void setup(){
 size(600, 600);
 background(0);
 fill(255);
 noFill();
 stroke(0);
 r = 0;
 s = 500;
}

void draw(){ 
  stroke(s/0.1*r, 100+s,s - r - 50);
 if(s>0) {
  translate(width/2, height/2);
  rotate(r);
  ellipse(0, 0, 100+r, s);
  r+=0.1;
  s--;
 }
}
