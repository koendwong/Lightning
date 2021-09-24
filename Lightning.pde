void setup(){
  size(800,800);
  strokeWeight(10);
  //frameRate(10);
}

float startX = 400 ;
float startY = 0 ;
float endX = 0 ;
float endY = 0 ;

void draw() {
  noFill();
  int Ball = 145;
  int ballLight = 1;
  int bLS = 400;
  for(int gradient = 0; gradient <= 50; gradient++) { //background gradient
    noStroke();
    fill(50-gradient,50-gradient,50-gradient);
    rect(0, 16*gradient, 800, 16);
  }
  
  float slopeY = mouseY;
  if(slopeY <= 0) {
    slopeY = 1;
  }
  
  float slope = ((mouseX-400)/(slopeY));
  fill(100);
  if(mousePressed == true) { //activate the lightning
    while(startY <= mouseY) {
      endY = startY + (float)(Math.random()*2); //i still don't know how this works
      endX = startX + (float)(Math.random()*6-3)+slope; //i still don't know how this works
      stroke(150,200,250,50);
      line(startX, startY, endX, endY); //the lightning
      startX = endX;
      startY = endY;
    }
    while(ballLight <= 30 && bLS >= 100) { //ball light gradient
      noStroke();
      fill(255,255,255,ballLight);
      ellipse(400,0, bLS, bLS);
      bLS-=15;
      ballLight+=1/2;
    }
    Ball = 255;
    startX = 400 ;
    startY = 0 ;
    endX = 0 ;
    endY = 0 ;
    
    fill(Ball-mouseY/40, Ball-mouseY/80, Ball); //cosmetic
  }
  
  noStroke();
  ellipse(400,0,100,100); //the ball
}
