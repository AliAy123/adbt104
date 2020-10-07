import ddf.minim.*;

AudioPlayer sound;
Minim minim;//audio contex
int radius, numPoints;

Star[] stars = new Star[800];

void setup() {
  size(800, 800);
  minim = new Minim(this);
  sound = minim.loadFile("swSong.mp3", 2048);
  sound.play();

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++) {

    stars[i].update();
    stars[i].show();

    ellipse(width/2, height/2, 15, 100);
    stars[i].update();
    stars[i].show();
  }
}

void keypressed(){
  //if(key == s){
  //    //sound.mute();
  //}
  //if
}
