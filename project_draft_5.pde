color darkbrown = #310405;
color green = #05430F;
color yellow = #D9E535;
color lightorange = #EEE0B7;
color orange=#E8CAAF;
color white=#FFFFFF;
color grey = #6C6363;
color blue = #72CBFA;
color darkblue= #146F3F;

float x=0;
float y=0;
float s=0;

void setup() {
  size(800, 600);
  background(120, 191, 237);
  fill(darkbrown);
  rect(0, 450, 800, 600);
  fish(200, 300, 5);
  fish(0, 0, 3);
  fish(0, 0, 2);
  bubbles(0,0,2);
  bubbles(30,30,3);
  bubbles(40,40,4);
  bubbles(1,1,1);
  bubbles(0,0,3);
  
  
  
 float x, y;
  x=50;
  y=450;
  s=1;
  plant(50, 450, 1);
  plant(350, 450, 1);
  
  while (s<3) {
   plant (x, y, s);
   s=s+random(0, 1);
   x=x+random(0, 600);
    y=y+random(0, 150);
  }if (x>=800) {
    x=50;
 }
  if (y>=600) {
    y=450;
  }
  
   
  
}



void plant(float x, float y, float s) {
  pushMatrix();


  translate(x, y);
  circle(0,0,10);
  branch();
  leaves();
  popMatrix();
}

void branch() {
  fill(116, 142, 116);
  triangle(0, 20, -10, 30, 10, 30);
  triangle(40, -5, 25, 40, 55, 40);
}

void leaves() {
  fill(green);
  ellipse(0, 0, 50, 50);
  ellipse(40, 0, 70, 70);
  
  int h=25;
  while(h>=35){
    fill(50,147,46);
    ellipse(0,0,2,2);
    h=h+1;
  }
}









void fish(int x, int y, int s) {
  pushMatrix();

  translate(random(1, 800), random(1, 450));
  scale(random(1, 5));
  fin();
  body();
  eye();

  popMatrix();
}

void body() {

  fill(random(0, 255), random(0, 255), random(0, 255));
    ellipse(0, 0, 30, 20);
}


void fin() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  triangle(0, 0, 25, -8, 25, 8);
  
  strokeWeight(1);
  int h = -8;
  while (h <= 8) {
     line(0, 0, 25, h);
     h = h + 2;
  }
}

void eye() {
  fill(0);
  ellipse(-8,-2,2,2);
  
}








void bubbles(float x, float y, float s){
  
 
  pushMatrix();
  
  translate(random(1,800), random(1,450));
  scale(random(1,3));
  bubble();
  
  
  popMatrix();
  
}

void bubble (){
  
  strokeWeight(2);
  stroke(62, 150, 203);
  fill(174, 217, 242);
  ellipse(20,20,5,5);
  stroke(0);
}
