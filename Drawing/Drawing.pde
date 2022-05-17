//Global Variables
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0;
//
void setup() {
  //
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  fullScreen();// displayWidth, displayHeight
  //
  population();
  quitButtonX=width*9/10;
  quitButtonY=height*0;
  quitButtonWidth=width*1/10;
  quitButtonHeight=height*1/20;
  
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
//
void draw() {
  //
  //Drawing Tools, with a combined Boolean
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle Drawing Tool
//
fill();
noStroke();
rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
stroke(reset);
fill(restColour);

}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Paper-Button
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
}//End mousepressed
//
//End MAIN
