
public class Star {
  float x;
  float y;
  float z;

  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
  }

  void update() {

    z = z - 2;
    if (z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
    }
  }
  void show() {
    fill(255);
    noStroke();

    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);

    float r = map(z, 0, width, 16, 0);
    fill(#FA220A);
    ellipse(sx, sy, r, r);
    // uncomment to see stars react to sound
    //ellipse(sx+sound.left.get(0)*50, sy+sound.right.get(0)*50, r, r); 
  }
}
