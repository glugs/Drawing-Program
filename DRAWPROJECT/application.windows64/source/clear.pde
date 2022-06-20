float clearBX, clearBY, clearBW, clearBH;
color clearButtonColour;
//
void clearButtonDraw() {
  fill(clearButtonColour);
      strokeWeight(3);
  rect(clearBX, clearBY, clearBW, clearBH);
  stroke(reset);
  fill(resetWhite);
  //
  //
  if (mouseX>=clearBX && mouseX<=clearBX+clearBW && mouseY>=clearBY && mouseY<=clearBY+clearBH) 
  {
    clearButtonColour = #759574;
  } else {
    clearButtonColour = #85AF85;
  }//
  fill(#FFFDD0); //Ink
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/40);
  text("CLEAR", clearBX, clearBY, clearBW, clearBH);
  fill(resetWhite);
}
//
void clearButtonmousePressed() {
  if ( mouseX>=clearBX && mouseX<=clearBX+clearBW && mouseY>=clearBY && mouseY<=clearBY+clearBH) {
    bgColour=resetWhite;
    fill(bgColour);
    strokeWeight(3);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    strokeWeight(reset);
  }
}
