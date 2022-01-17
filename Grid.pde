/*

 draw grid in dashed lines
 
 */
class Grid {
  int gridStep = 50; // default gridstep
  float [] dashes = {3, 5};  // default dashes of man grid
  float [] dashes2 = {5, 3}; // default dashes of sub grid
  DashLine d1 = new DashLine(dashes); // dash line of main grid
  DashLine d2 = new DashLine(dashes2); // dash line of sub grid
  color theColor = color(255, 255, 255); // color of the main grid
  color theSubColor = color(62, 62, 62); // color of the sub grid

  Grid(int stepSize) {
    gridStep = stepSize;
  }

  void setColor( color theColor, color theSubColor) {
    this.theColor = theColor;
    this.theSubColor = theSubColor;
  }
  /*
   Draw main grid
   */
  void grid() {
    int xStep = width / gridStep;
    int yStep = height / gridStep;
    push();
    stroke(theColor);
    for (int i = 0; i <= xStep; i++) {
      d1.dline((i*gridStep), 0, (i*gridStep), height);
    }
    for (int i = 0; i <= yStep; i++) {
      d1.dline(0, (i*gridStep), width, (i*gridStep));
    }
    pop();
  }
  /*
Draw sub grid in the middle of main grid
   */
  void subGrid() {
    int xStep = width / gridStep;
    int yStep = height / gridStep;
    push();
    stroke(theSubColor);
    for (int i = 0; i <= xStep; i++) {
      d2.dline(gridStep/2 + (i*gridStep), 0, gridStep/2 + (i*gridStep), height);
    }
    for (int i = 0; i <= yStep; i++) {
      d2.dline(0, gridStep/2 + (i*gridStep), width, gridStep/2 + (i*gridStep));
    }
    pop();
  }
}
