float x, y, stepSize, angle;
float dotSize, decreaseRate;
float bri;
void setup() {
  size(600, 600);
  background(255);
  noStroke();
  
  x = width/2;
  y = height/2;
  stepSize = 2;
  angle = TWO_PI;
  dotSize = 20;
  decreaseRate = random(0.1, 1);
  bri = 0;
}

void draw() {
  // changing color
  fill(bri);
  
  ellipse(x, y, dotSize, dotSize);
  
  // mouse controls angle
  //angle = mouseX * 0.01;
  
  // randomness controls angle.
  // if the magnitudes are different, it turns more
  // in one direction
  angle = angle + random(-0.20, 0.20);
  
  x = x + stepSize * cos(angle);
  y = y + stepSize * sin(angle);
  
  dotSize = dotSize - decreaseRate;
  
  bri = bri + 1;
  
  // AND = &&
  //if(num > 10 && num < 30) { ... }
  
  // OR = ||
  if(x < 0 || x > width || y < 0 || y > height || dotSize < 1) {
    // jump to the center
    x = width/2;
    y = height/2;
    dotSize = 20;
    decreaseRate = random(0.1, 1);
    bri = 0;
    
    // bounce back
    //angle = angle + PI;
  }
}