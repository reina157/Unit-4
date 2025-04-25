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
  background(120,191,237);
  
}

void draw(){
 
}

void fish(int x, int y, float s){
  pushMatrix();
  translate(random(1,600),random(1,800));
  fish();
  
  popMatrix();
}

void fish(){
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(random(1,800),random(1,600),random(50,200),random(10,40));
}
