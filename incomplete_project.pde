color darkbrown = #310405;
color green = #05430F;
color yellow = #D9E535;
color lightorange = #EEE0B7;
color orange=#E8CAAF;
color white=#FFFFFF;
color grey = #6C6363;
color blue = #72CBFA;
color darkblue= #146F3F;

int x=0;
int y=0;
float s=0;

void setup() {
  size(800, 600);
  background(120, 191, 237);
  fill(darkbrown);
  rect(0, 450, 800, 600);
  fish(200, 300, 5);
  fish(0,0,3);
  fish(0,0,2);
  
    float x,y,s;
  x=50;
  y=450;
  s=1;
  while(s<3){
 plant (x,y,s);
   s=s+0.25;
  } if(s>=3) {
 x=x+200;
  y=y+80;
}

//float x,y,s;


}


void plant(float x, float y, float s){

  fill(green);
  ellipse(50,450,50,50);
  ellipse(90,450,70,70);
  fill(darkbrown);
  rect(0,460,800,800);
  

}


void fish(int x, int y, int s) {
  pushMatrix();
  
  translate(random(1, 800), random(1, 600));
  scale(random(1,5));
  fin();
  body();
 
  bubbles();

  popMatrix();
}




  
  
  
void body() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(0, 0, 30,20);
}

void fin() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  triangle(0,0,25,-8,25,8);
}


void bubbles(){
  stroke(62,150,203);
  fill(174,217,242);
  ellipse(30,500,30,30);
  stroke(0);
 
}
