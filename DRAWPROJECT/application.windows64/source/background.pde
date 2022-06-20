float backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight;
String backgroundText = "BACKDROP";
float backgrounddropX, backgrounddropY, backgrounddropWidth, backgrounddropHeight;
float backgroundRedX, backgroundRedY, backgroundRedWidth, backgroundRedHeight;
float backgroundOrangeX, backgroundOrangeY, backgroundOrangeWidth, backgroundOrangeHeight;
float backgroundYellowX, backgroundYellowY, backgroundYellowWidth, backgroundYellowHeight;
float backgroundGreenX, backgroundGreenY, backgroundGreenWidth, backgroundGreenHeight;
float backgroundBlueX, backgroundBlueY, backgroundBlueWidth, backgroundBlueHeight;
float backgroundPurpleX, backgroundPurpleY, backgroundPurpleWidth, backgroundPurpleHeight;
float backgroundBrownX, backgroundBrownY, backgroundBrownWidth, backgroundBrownHeight;
float backgroundBlackX, backgroundBlackY, backgroundBlackWidth, backgroundBlackHeight;
float backgroundWhiteX, backgroundWhiteY, backgroundWhiteWidth, backgroundWhiteHeight;
float backgroundTitleX, backgroundTitleY, backgroundTitleWidth, backgroundTitleHeight;
boolean bkRed=false, bkBlue=false, bkGreen=false, bkYellow=false, bkPurple=false, bkBrown=false, bkGrey=false, bkWhite=false, bkBlack=true;
String backgroundTitle = "Backgrounds";
//
void buttonBackgroundDraw () {
  if (mouseX>=backgroundButtonX && mouseX<=backgroundButtonX+backgroundButtonWidth && mouseY>=backgroundButtonY && mouseY<=backgroundButtonY+backgroundButtonHeight) {
    fill(buttonHover);
    rect(backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  } else if (backgrounddr==true) {
    fill(buttonHover);
    rect(backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  } else {
    fill(resetWhite);
    rect(backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  }
  fill(black);
  textAlign (CENTER, CENTER);
  size = 40;
  textFont(font, size);
  text(backgroundText , backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  fill(resetWhite);
}
void backgroundButtonmousePressed() {
  if (mouseX>=backgroundButtonX && mouseX<=backgroundButtonX+backgroundButtonWidth && mouseY>=backgroundButtonY && mouseY<=backgroundButtonY+backgroundButtonHeight) {
    if (backgrounddr==false) {backgrounddr=true;} else {backgrounddr=false;}
  }
}
//
void BackgroundDraw() {
  rect(backgrounddropX, backgrounddropY, backgrounddropWidth, backgrounddropHeight);
  //
  rect(backgroundTitleX, backgroundTitleY, backgroundTitleWidth, backgroundTitleHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 50;
  textFont(font, size);
  text(backgroundTitle, backgroundTitleX, backgroundTitleY, backgroundTitleWidth, backgroundTitleHeight);
  fill(resetWhite);
  //
  if (mouseX>=backgroundRedX && mouseX<=backgroundRedX+backgroundRedWidth && mouseY>=backgroundRedY && mouseY<=backgroundRedY+backgroundRedHeight) {
    fill(redHover);
    rect(backgroundRedX, backgroundRedY, backgroundRedWidth, backgroundRedHeight);
  } else if (Redbg==false) {
    fill(red);
    rect(backgroundRedX, backgroundRedY, backgroundRedWidth, backgroundRedHeight);
  }
  if (mouseX>=backgroundOrangeX && mouseX<=backgroundOrangeX+backgroundOrangeWidth && mouseY>=backgroundOrangeY && mouseY<=backgroundOrangeY+backgroundOrangeHeight) {
    fill(OrangeHover);
    rect(backgroundOrangeX, backgroundOrangeY, backgroundOrangeWidth, backgroundOrangeHeight);
  } else if (Orangebg==false) {
    fill(Orange);
    rect(backgroundOrangeX, backgroundOrangeY, backgroundOrangeWidth, backgroundOrangeHeight);
  }
  if (mouseX>=backgroundYellowX && mouseX<=backgroundYellowX+backgroundYellowWidth && mouseY>=backgroundYellowY && mouseY<=backgroundYellowY+backgroundYellowHeight) {
    fill(yellowHover);
    rect(backgroundYellowX, backgroundYellowY, backgroundYellowWidth, backgroundYellowHeight);
  } else if (Yellowbg==false) {
    fill(yellow);
    rect(backgroundYellowX, backgroundYellowY, backgroundYellowWidth, backgroundYellowHeight);
  }
  //
  if (mouseX>=backgroundBlueX && mouseX<=backgroundBlueX+backgroundBlueWidth && mouseY>=backgroundBlueY && mouseY<=backgroundBlueY+backgroundBlueHeight) {
    fill(blueHover);
    rect(backgroundBlueX, backgroundBlueY, backgroundBlueWidth, backgroundBlueHeight);
  } else if (Bluebg==false) {
    fill(blue);
    rect(backgroundBlueX, backgroundBlueY, backgroundBlueWidth, backgroundBlueHeight);
  }
  //
  if (mouseX>=backgroundGreenX && mouseX<=backgroundGreenX+backgroundGreenWidth && mouseY>=backgroundGreenY && mouseY<=backgroundGreenY+backgroundGreenHeight) {
    fill(greenHover);
    rect(backgroundGreenX, backgroundGreenY, backgroundGreenWidth, backgroundGreenHeight);
    ;
  } else if (Greenbg==false) {
    fill(green);
    rect(backgroundGreenX, backgroundGreenY, backgroundGreenWidth, backgroundGreenHeight);
    ;
  }
  //
  if (mouseX>=backgroundPurpleX && mouseX<=backgroundPurpleX+backgroundPurpleWidth && mouseY>=backgroundPurpleY && mouseY<=backgroundPurpleY+backgroundPurpleHeight) {
    fill(purpleHover);
    rect(backgroundPurpleX, backgroundPurpleY, backgroundPurpleWidth, backgroundPurpleHeight);
  } else if (Purplebg==false) {
    fill(purple);
    rect(backgroundPurpleX, backgroundPurpleY, backgroundPurpleWidth, backgroundPurpleHeight);
  }
  //
  if (mouseX>=backgroundBrownX && mouseX<=backgroundBrownX+backgroundBrownWidth && mouseY>=backgroundBrownY && mouseY<=backgroundBrownY+backgroundBrownHeight) {
    fill(brownHover);
    rect(backgroundBrownX, backgroundBrownY, backgroundBrownWidth, backgroundBrownHeight);
  } else if (Brownbg==false) {
    fill(brown);
    rect(backgroundBrownX, backgroundBrownY, backgroundBrownWidth, backgroundBrownHeight);
  }
   if (mouseX>=backgroundBlackX && mouseX<=backgroundBlackX+backgroundBlackWidth && mouseY>=backgroundBlackY && mouseY<=backgroundBlackY+backgroundBlackHeight) {
    fill(blackHover);
    rect(backgroundBlackX, backgroundBlackY, backgroundBlackWidth, backgroundBlackHeight);
  } else if (Blackbg==false) {
    fill(black);
    rect(backgroundBlackX, backgroundBlackY, backgroundBlackWidth, backgroundBlackHeight);
  }
 
  if (mouseX>=backgroundWhiteX && mouseX<=backgroundWhiteX+backgroundWhiteWidth && mouseY>=backgroundWhiteY && mouseY<=backgroundWhiteY+backgroundWhiteHeight) {
    fill(whiteHover);
    rect(backgroundWhiteX, backgroundWhiteY, backgroundWhiteWidth, backgroundWhiteHeight);
  } else if (Whitebg==false) {
    fill(resetWhite);
    rect(backgroundWhiteX, backgroundWhiteY, backgroundWhiteWidth, backgroundWhiteHeight);
  }
 
  fill(resetWhite);
}//
//
void backgroundmousePressed() {
  if (mouseX>=backgroundRedX && mouseX<=backgroundRedX+backgroundRedWidth && mouseY>=backgroundRedY && mouseY<=backgroundRedY+backgroundRedHeight) {
    bgColour=red;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
   if (mouseX>=backgroundOrangeX && mouseX<=backgroundOrangeX+backgroundOrangeWidth && mouseY>=backgroundOrangeY && mouseY<=backgroundOrangeY+backgroundOrangeHeight) {
    bgColour=Orange;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>=backgroundYellowX && mouseX<=backgroundYellowX+backgroundYellowWidth && mouseY>=backgroundYellowY && mouseY<=backgroundYellowY+backgroundYellowHeight) {
    bgColour=yellow;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
   if (mouseX>=backgroundGreenX && mouseX<=backgroundGreenX+backgroundGreenWidth && mouseY>=backgroundGreenY && mouseY<=backgroundGreenY+backgroundGreenHeight) {
    bgColour=green;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>=backgroundBlueX && mouseX<=backgroundBlueX+backgroundBlueWidth && mouseY>=backgroundBlueY && mouseY<=backgroundBlueY+backgroundBlueHeight) {
    bgColour=blue;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  
  if (mouseX>=backgroundPurpleX && mouseX<=backgroundPurpleX+backgroundPurpleWidth && mouseY>=backgroundPurpleY && mouseY<=backgroundPurpleY+backgroundPurpleHeight) {
    bgColour=purple;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>=backgroundBrownX && mouseX<=backgroundBrownX+backgroundBrownWidth && mouseY>=backgroundBrownY && mouseY<=backgroundBrownY+backgroundBrownHeight) {
    bgColour=brown;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
    if (mouseX>=backgroundBlackX && mouseX<=backgroundBlackX+backgroundBlackWidth && mouseY>=backgroundBlackY && mouseY<=backgroundBlackY+backgroundBlackHeight) {
    bgColour=black;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
 
  if (mouseX>=backgroundWhiteX && mouseX<=backgroundWhiteX+backgroundWhiteWidth && mouseY>=backgroundWhiteY && mouseY<=backgroundWhiteY+backgroundWhiteHeight) {
    bgColour=resetWhite;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }

}
