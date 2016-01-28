public void setup()
{
  size(500,500);
  background(204);
  frameRate(5);
}
public void draw()
{
  sierpinski(50, 450, 400);
}
public void mousePressed()//optional
{
  
}
public void sierpinski(int x, int y, int len) 
{
	if (frameCount % 10 == 0) {
                fill(255, 204, 204);
            } else if (frameCount % 10 == 1) {
                fill(255, 230, 204);
            } else if (frameCount % 10 == 2) {
                fill(255, 255, 204);
            } else if (frameCount % 10 == 3) {
                fill(230, 255, 204);
            } else if (frameCount % 10 == 4) {
                fill(204, 255, 204);
            } else if (frameCount % 10 == 5) {
                fill(204, 255, 230);
            } else if (frameCount % 10 == 6) {
                fill(204, 255, 255);
            } else if (frameCount % 10 == 7) {
                fill(204, 229, 255);
            } else if (frameCount % 10 == 8) {
                fill(204, 204, 255);
            } else  {
                fill(229, 204, 255);
            }

  if(len < 20)
  {
  	noStroke();
   	triangle(x, y, x + len, y, x + len/2, y - len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}