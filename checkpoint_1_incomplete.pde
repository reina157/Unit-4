//pallete
color brown=#4D363A;

void setup(){
  size(800,600);
}

void draw(){
  house(200,100);
  house(500,-200);
  
  //roof
  fill(brown);
  
  
}

void house(int x, int y){
  pushMatrix();
  translate(x,y);
 
 roof();
 walls();
 windows();
 door();
  
  
  popMatrix();
}
