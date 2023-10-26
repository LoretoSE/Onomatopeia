PFont myfont;
int counter;
boolean click=true;

import processing.pdf.*;

void setup(){
  myfont=createFont("IBMPlexMono-Bold.ttf", 18);
  size(420,595);
  frameRate (2);
  noStroke();
  beginRecord(PDF, "10.pdf");
}

void draw(){
  //randomSeed(counter);
  println(counter);
  background (255);
  fill (0);
  textFont (myfont);
  //textSize (18);
  textAlign(CENTER);
  
  for (int i=0; i<20; i=i+1){
    plutja(random(20,400), random(20,200));
  }
  for(int i=0; i<10; i=i+1){
    pium(random(20,400), random(20,200));
  }
  for(int i=0; i<15; i=i+1){
    neu1(random(20,400), random(210,420));
  }
  for(int i=0; i<5; i=i+1){
    neu2(random(20,400), random(200,400));
  }
  for(int i=0; i<15; i=i+1){
    xof(random(20,400), random(500,590));
  }
  for(int i=0; i<5; i=i+1){
    plutja2(random(20,400), random(480,520));
  }
  
  //noLoop();
  
  endRecord();
  
  saveFrame("######.tif");
  }
  
  
  void mouseClicked(){
  if(click){
    counter=counter+1;
  }
}




void neu1(float px, float py){
  push();
  translate(px,py);
  for(int i=0; i<30; i=i+1){
  rotate(radians(45));
  text("»",4,4);
  }
  pop();
}
  
  
void neu2(float px, float py){
  push();
  translate(px,py);
  for(int i=0; i<40; i=i+1){
  rotate(radians(45));
  text("ℓ",8,8);
  }
  pop();
}

void xof(float px, float py){
  push();
  translate(px,py);
  textLeading(random(20,40));
  text("≥XOF≤",random(3/4,4/4), random(3/4,4/4));
  pop();
}

void pium(float px, float py){
  push();
  translate(px,py);
  textLeading(random(20,30));
  text("PIUM",random(1/4,2/4), random(1/4,2/4));
  pop();
}

void plutja(float px, float py){
  push();
  translate(px,py);
  textLeading(20);
  text("/",random(1/4,2/4), random(1/4,2/4));
  pop();
}

void plutja2(float px, float py){
  push();
  translate(px,py);
  textLeading(20);
  text("/",random(1/4,2/4), random(1/4,2/4));
  pop();
}
