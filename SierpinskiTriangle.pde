public void setup()
{

}
public void draw()
{
  sierpinski(0,100, 100);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) 
  {
    triangle(x, y, x + len/4, y - len/2, x + len/2, y);
  } 
  else
  {
    sierpinski(x, y, len/2);
    triangle(x, y, x + len/4, y - len/2, x + len/2, y);
    triangle(x + len/2, y, x + len/4+ len/2, y - len/2, x + len/2+ len/2, y);
    triangle(x + len/4, y-len/2, x + len/2, y- len, x + 3*len/4, y - len/2 );
  }
}
