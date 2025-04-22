color darkbrown = #310405;
color green = #05430F;
color yellow = #D9E535;
color lightorange = #EEE0B7;
color orange=#E8CAAF;
color white=#FFFFFF;
color grey = #6C6363;
color blue = #72CBFA;
color darkblue= #146F3F;

void setup(){
  size(800,600);
  background(white);
  
  int x,y;
  x=0;
  y=100;
  while(y<100){ 
  face(x,y,0.5);
  x=x+250;
  if(x>=800){
  x=0;
  y=y+200;
  }
}
}

void draw(){
  
}

void face(int x, int y,float s){
  pushMatrix();
  translate(x,y);
  scale(0.5);
  house();
  roof();
  window();
  door();
  bush();
  popMatrix();
}

void house(){
  fill(random(0,255),random(0,255),random(0,255));
  strokeWeight(2);
  stroke(0);
  rect(0,0,400,300);
}

void roof(){
  fill(darkbrown);
  stroke(0);
  strokeWeight(2);
  triangle(0,0,400,0,200,-200);
}

void window(){
  fill(blue);
  stroke(3);
  rect(45,100,65,50);
  line(110,100,45,100);
  line(45,100,45,150);
  line(110,100,110,150);
  line(110,150,45,150);
  line(75,100,75,150);
  line(45,125,110,125);
  fill(255,0,0);
  rect(40,150,75,10);
}

void door(){
  fill(orange);
  rect(150,150,100,150);
  fill(0);
  ellipse(160,240,5,5);
}

void bush(){
  fill(green);
  strokeWeight(0);
  ellipse(45,300,80,80);
  ellipse(5,300,40,40);
  ellipse(75,300,60,60);
  fill(yellow);
  rect(-20,305,130,50);
}
