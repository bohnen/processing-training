int currentImagePosition = 0;
PImage [] images;

boolean playing = false;

void setup()
{
  images = loadImages("mana",".jpg",6);
  size(images[0].width, images[0].height);
  frameRate(6);
}

void draw()
{
  image(images[currentImagePosition],0,0);
  
  if(playing){
    currentImagePosition += 1;
    if(currentImagePosition >= images.length){
      currentImagePosition = 0;
    }
  }
}

void mousePressed()
{
  playing = !playing;
}

