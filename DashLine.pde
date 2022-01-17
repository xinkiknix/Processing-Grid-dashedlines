/*
Derived from
 J David Eisenberg
 https://openprocessing.org/sketch/7013/#
 */
class DashLine {

  float [] dashes = {5, 3, 6, 4}; //default

  DashLine() {
  }
  /*
 * Define a dashed line with given dash and gap length.
   * dash - length of dashed line in pixels
   * gap - space between dashes in pixels
   */
  DashLine(float dash, float gap) {
    float[] spacing = { dash, gap };
    dashes = spacing;
  }

  DashLine(float[] spacing) {
    dashes = spacing;
  }


  /*
Draw the line from x0, y0 to x1, y1
   */
  void dline(float x0, float y0, float x1, float y1)
  {
    float distance = dist(x0, y0, x1, y1);
    float [ ] xSpacing = new float[dashes.length];
    float [ ] ySpacing = new float[dashes.length];
    float drawn = 0.0;  // amount of distance drawn
    if (distance > 0)
    {
      int i;
      boolean drawLine = true; // alternate between dashes and gaps

      /*
      Figure out x and y distances for each of the spacing values
       I decided to trade memory for time; I'd rather allocate
       a few dozen bytes than have to do a calculation every time
       I draw.
       */
      for (i = 0; i < dashes.length; i++)
      {
        xSpacing[i] = lerp(0, (x1 - x0), dashes[i] / distance);
        ySpacing[i] = lerp(0, (y1 - y0), dashes[i] / distance);
      }

      i = 0;
      while (drawn < distance)
      {
        if (drawLine)
        {
          line(x0, y0, x0 + xSpacing[i], y0 + ySpacing[i]);
        }
        x0 += xSpacing[i];
        y0 += ySpacing[i];
        /* Add distance "drawn" by this line or gap */
        drawn = drawn + mag(xSpacing[i], ySpacing[i]);
        i = (i + 1) % dashes.length;  // cycle through array
        drawLine = !drawLine;  // switch between dash and gap
      }
    }
  }
}
