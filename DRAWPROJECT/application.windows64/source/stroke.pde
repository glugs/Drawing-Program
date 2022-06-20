//Global Variables
float strokeTX, strokeTY, strokeTW, strokeTH;
String strokeText = "THICKNESS";
float strokedropX, strokedropY, strokedropWidth, strokedropHeight;
float stroke1X, stroke1Y, stroke1Width, stroke1Height, stroke2X, stroke2Y, stroke2Width, stroke2Height, stroke3X, stroke3Y, stroke3Width, stroke3Height;
String one="1X", two="2X", three="3X";
//
void strokebuttonDraw() {
  if (mouseX>=strokeTX && mouseX<=strokeTX+strokeTW && mouseY>=strokeTY && mouseY<=strokeTY+strokeTH) {
    fill(buttonHover);
    rect(strokeTX, strokeTY, strokeTW, strokeTH);
  } else if (strokedrop==true) {
    fill(buttonHover);
    rect(strokeTX, strokeTY, strokeTW, strokeTH);
  } else {
    fill(resetWhite);
    rect(strokeTX, strokeTY, strokeTW, strokeTH);
  }
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/84);
  text(strokeText, strokeTX, strokeTY, strokeTW, strokeTH);
  fill(resetWhite);
}//End strokebuttonDraw
//
void strokebuttonmousePressed() 
{
  if (mouseX>=strokeTX && mouseX<=strokeTX+strokeTW && mouseY>=strokeTY && mouseY<=strokeTY+strokeTH) {
    if (strokedrop==false) {
      strokedrop=true;
    } else {
      strokedrop=false;
    }
  }
}

//
void StrokeDraw()
{
  stroke(black);
  PImage small, medium, big;
small = loadImage("smalldot.png");
medium=loadImage("medium2.jpg");
big= loadImage("dot.jpg");
  rect(strokedropX, strokedropY, strokedropWidth, strokedropHeight);
  //
  fill(resetWhite);
  if (mouseX>=stroke1X && mouseX<=stroke1X+stroke1Width && mouseY>=stroke1Y && mouseY<=stroke1Y+stroke1Height || strokeSize==2) {
    fill(buttonHover);
    rect(stroke1X, stroke1Y, stroke1Width, stroke1Height);
    fill(black);
    text(one,stroke1X, stroke1Y, stroke1Width, stroke1Height);
    
  } else {
    fill(resetWhite);
    rect(stroke1X, stroke1Y, stroke1Width, stroke1Height);
    image(small,stroke1X, stroke1Y, stroke1Width, stroke1Height);
  }
  //
  if (mouseX>=stroke2X && mouseX<=stroke2X+stroke2Width && mouseY>=stroke2Y && mouseY<=stroke2Y+stroke2Height || strokeSize==10) {
    fill(buttonHover);
    rect(stroke2X, stroke2Y, stroke2Width, stroke2Height);
    fill(black);
    text(two,stroke2X, stroke2Y, stroke2Width, stroke2Height);
  } else {
    fill(resetWhite);
    rect(stroke2X, stroke2Y, stroke2Width, stroke2Height);
    image(big,stroke2X, stroke2Y, stroke2Width, stroke2Height);
  }
  if (mouseX>=stroke3X && mouseX<=stroke3X+stroke3Width && mouseY>=stroke3Y && mouseY<=stroke3Y+stroke3Height || strokeSize==20) {
    fill(buttonHover);
    rect(stroke3X, stroke3Y, stroke3Width, stroke3Height);
    fill(black);
    text(three,stroke3X, stroke3Y, stroke3Width, stroke3Height);
  } else {
    fill(resetWhite);
    rect(stroke3X, stroke3Y, stroke3Width, stroke3Height);
    image(medium,stroke3X, stroke3Y, stroke3Width, stroke3Height);
  }
  strokeWeight(reset);
  stroke(reset);
} //
//
void StrokemousePressed() {
  if (mouseX>=stroke1X && mouseX<=stroke1X+stroke1Width && mouseY>=stroke1Y && mouseY<=stroke1Y+stroke1Height) {
    strokeSize=5;
  }
  if (mouseX>=stroke2X && mouseX<=stroke2X+stroke2Width && mouseY>=stroke2Y && mouseY<=stroke2Y+stroke2Height) {
    strokeSize=15;
  }
  if (mouseX>=stroke3X && mouseX<=stroke3X+stroke3Width && mouseY>=stroke3Y && mouseY<=stroke3Y+stroke3Height) {
    strokeSize=25;
  }

  }
