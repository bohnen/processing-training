PImage img;

void setup()
{
  img = loadImage("movie.jpg");
  size(img.width, img.height);
}

void draw()
{
  int imgheight = 100 * img.height/img.width;
  imageMode(CENTER);
  image(img, mouseX, mouseY , 100, imgheight);
}

