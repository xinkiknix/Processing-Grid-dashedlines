/**
 * Gridness
 * by Johan terryn.
 *
 * Draw dashed gridlines.
 */
Grid grid = new Grid(100);

void setup() {
  size(1000, 800);
  // set color = optional
   grid.setColor(color(125,125,125),color(20,20,20));
}

void draw() {
  background(0);
  grid.grid();
  grid.subGrid();
  // here comes your code
  // vvvvvvvvvvvvvvvvvvvv
}


void mouseClicked(MouseEvent event) {
  if (event.getButton() == 39) { //right mouse button click
    println(" " + mouseX +"-" + mouseY);
  }
}
