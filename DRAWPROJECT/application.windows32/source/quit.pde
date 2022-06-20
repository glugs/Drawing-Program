float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
String quitT="X";
//
void buttonQuit() 
{
  fill(quitBColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  fill(resetWhite);
  //
  
  if (mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) 
  {
    quitBColour = #FCFAE0;
     fill(black); 
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/70);
  text(quitT ,quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite);
  } else {
    quitBColour = red;
  }//
  //
  fill(black); 
  textAlign (CENTER, CENTER);
  textFont(font,  displayWidth/70);
  text(quitT ,quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite);
}//End
//
void buttonQuitmousePressed() 
{
  if(mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
}
