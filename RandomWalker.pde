float t = random(0, 1000), t1 = random(0, 1000);
float x, y, c;


void setup()
{
  size(500, 500);
  background(40);
  frameRate(60);
  
  c = random(0, 255);
  
}

void draw ()
{
  t = t + 0.01;
  t1 = t1 + 0.01;

  x = noise(t);
  y = noise(t1);

  x = map(x, 0, 1, 0, width);
  y = map(y, 0, 1, 0, height);

  fill(x, y, c);
  noStroke();
  ellipse(x, y, 4, 4);
}
