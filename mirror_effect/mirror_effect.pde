void setup()
{
  size(480,640);
  background(0);
  rectMode(CENTER);
}

void draw()
{
}

void mouseDragged()
{
  stroke(0,255,0,255); 
  pushMatrix();
  translate(width/2,height/2);
  rect(0,0,50,50);
  for(int i=0;i<8;i++){
    _line(pmouseX,pmouseY, mouseX, mouseY,i*45);
  }
  println("(", mouseX, mouseY, ")");
  popMatrix();
}

void _line(float px,float py,float x,float y,float deg)
{
  rotate(radians(deg));
  line(px - width/2, py - height/2, x - width/2 , y - height/2);
}
