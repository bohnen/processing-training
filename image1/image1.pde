PImage img;

void setup()
{
  img = loadImage("movie.jpg");
  size(img.width, img.height);
}

void draw()
{
  int imgheight = 200 * img.height/img.width;
  image(img, 30, 0 , 200, imgheight);
}

