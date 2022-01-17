# Processing-Grid-dashedlines

A set of 2 classes that allow you to create Gridlines in Procesing using dashed lines.
define: Grid grid = new Grid(100);  where 100 is the spacing in pixels

grid.setColor(color(125,125,125),color(20,20,20)); sets the color of the main grid and of the secondary grid

in draw()

grid.grid();  //show main grid

  grid.subGrid(); // show subgrid
  
Mouseclicked (right mouse button) is used to display x-y coordinates in the console

void mouseClicked(MouseEvent event) {

  if (event.getButton() == 39) { //right mouse button click
  
    println(" " + mouseX +"-" + mouseY);
	
  }
}  
