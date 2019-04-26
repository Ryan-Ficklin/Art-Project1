void setup() {
  size(height, width);
  background(0);
}

int xPos = screen.height/2;
int yPos = 300;
int xSpeed = 10;
int ySpeed = 10;
int width = 1;
float r = random(0, 255);
float g = random(0, 255); 
float b = random(0, 255); 
float rs = 5;
float gs = 10;
float bs = 5;
float t = 0;
float ts = 0.0005; 
void draw() {
  background(0);
  rectMode(CENTER);
  pushMatrix();
  translate(mouseX, mouseY);
  for (int i = 0; i < 500; i+=1) {
    rotate(t);
    noStroke();
    fill(i +200, i, i*-2, 200);  
    ellipse(i, 0, 20, 20);
    fill(i*-2, i, i+200);  
    rect(i, 0, 10, 10);
    //r = random(1,255);
  }
  /*
   popMatrix();
   pushMatrix();
   translate(mouseX - mouseY,mouseY);
   for(int i = 0; i < 200; i+=2){
   rotate(t);
   noStroke();
   fill(i,i+200,i*-2,200);
   ellipse(i,0,50,50);
   fill(i+200,i,i*-2);
   rect(i,0,20,20);
   //r = random(1,255); 
   }
   popMatrix();
   popMatrix();
   pushMatrix();
   translate(mouseX,mouseY);
   for(int i = 0; i < 200; i+=2){
   rotate(-t);
   noStroke();
   fill(i*-2,i,i+200,200);  
   ellipse(i,0,50,50);
   fill(i +200,i,i*-2,200);
   rect(i,0,20,20);
   //r = random(1,255); 
   }
   */
  popMatrix();
  xPos+=xSpeed;
  yPos+=ySpeed;
  if ((xPos >=screen.height-200) || (xPos <= 200)) {
    xSpeed*=-1;
  }
  if ((yPos >=screen.width-200) || (yPos <= 200)) {
    ySpeed*=-1;
  }
  r+=rs;
  g-=gs;
  b-=bs;
  t+=ts;
  if ((r > 255) || (r < 0)) {
    rs*=-1;
  }
  if ((g > 255) || (g < 0)) {
    gs*=-1;
  }  
  if ((b > 255) || (b < 0)) {
    bs*=-1;
  }
  //if((t > 2.18) || (t < 2)){
  //   ts*=-1;
  //}
  fill(255);
  text(t, 10, 40);
}
