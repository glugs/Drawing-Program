void cursordraw() 
{
 PImage mouseCursor;

  mouseCursor = loadImage("mouse.jpg");
  if(mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    cursor(mouseCursor, 0, 0);
  } else {
    cursor(ARROW);
  }
}
