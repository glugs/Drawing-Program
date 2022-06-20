float drawButtonX, drawButtonY, drawButtonWidth, drawButtonHeight;
String colorText = "DRAW";
float dropX, dropY, dropWidth, dropHeight;
float RedX, RedY, RedWidth, RedHeight;
float OrangeX, OrangeY, OrangeWidth, OrangeHeight;
float YellowX, YellowY, YellowWidth, YellowHeight;
float GreenX, GreenY, GreenWidth, GreenHeight;
float BlueX, BlueY, BlueWidth, BlueHeight;
float PurpleX, PurpleY, PurpleWidth, PurpleHeight;
float BrownX, BrownY, BrownWidth,BrownHeight;
float BlackX, BlackY, BlackWidth, BlackHeight;
float WhiteX, WhiteY, WhiteWidth, WhiteHeight;
float lineBX, lineBY, lineBWidth, lineBHeight;
float eraserX, eraserY, eraserWidth, eraserHeight;
String pencilT = "Pencil",  eraserT = "Eraser";
boolean Red=false, Blue=false, Green=false, Yellow=false, Purple=false, Brown=false, Orang=false, White=false, Black=true, Eraser=false;
//
void colourButtonDraw() 
{
  if (mouseX>=drawButtonX && mouseX<=drawButtonX+drawButtonWidth && mouseY>=drawButtonY && mouseY<=drawButtonY+drawButtonHeight) {
    fill(buttonHover);
    rect(drawButtonX, drawButtonY, drawButtonWidth, drawButtonHeight);
  } else if (colourdrop==true) {
    fill(buttonHover);
    rect(drawButtonX, drawButtonY, drawButtonWidth, drawButtonHeight);
  } else {
    fill(resetWhite);
    rect(drawButtonX, drawButtonY, drawButtonWidth, drawButtonHeight);
  }
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/60);
  text(colorText, drawButtonX, drawButtonY, drawButtonWidth, drawButtonHeight);
  fill(resetWhite);
  //
}//End colourButtonDraw
//
void colourButtonmousePressed() {
  if (mouseX>=drawButtonX && mouseX<=drawButtonX+drawButtonWidth && mouseY>=drawButtonY && mouseY<=drawButtonY+drawButtonHeight) {
    if (colourdrop==false) {colourdrop=true;} else {colourdrop=false;}
  }
}

//
void Drawdrop() 
{
  rect(dropX, dropY, dropWidth, dropHeight);
 
  //
  if (mouseX>=RedX && mouseX<=RedX+RedWidth && mouseY>=RedY && mouseY<=RedY+RedHeight) {
    fill(redHover);
    rect(RedX, RedY, RedWidth, RedHeight);
  } else if (Red==false) {
    fill(red);
    rect(RedX, RedY, RedWidth,RedHeight);
  }
   //
  if (mouseX>=OrangeX && mouseX<=OrangeX+OrangeWidth && mouseY>=OrangeY && mouseY<=OrangeY+OrangeHeight) {
    fill(OrangeHover);
    rect(OrangeX, OrangeY, OrangeWidth, OrangeHeight);
  } else if (Orang==false) {
    fill(Orange);
    rect(OrangeX, OrangeY, OrangeWidth, OrangeHeight);
  }
  //
  if (mouseX>=YellowX && mouseX<=YellowX+YellowWidth && mouseY>=YellowY && mouseY<=YellowY+YellowHeight) {
    fill(yellowHover);
    rect(YellowX, YellowY, YellowWidth, YellowHeight);
  } else if (Yellow==false) {
    fill(yellow);
    rect(YellowX, YellowY, YellowWidth, YellowHeight);
  }
   //
  if (mouseX>=GreenX && mouseX<=GreenX+GreenWidth && mouseY>=GreenY && mouseY<=GreenY+GreenHeight) {
    fill(greenHover);
    rect(GreenX, GreenY, GreenWidth, GreenHeight);
  } else if (Green==false) {
    fill(green);
    rect(GreenX, GreenY, GreenWidth, GreenHeight);
  }
  //
  if (mouseX>=BlueX && mouseX<=BlueX+BlueWidth && mouseY>=BlueY && mouseY<=BlueY+BlueHeight) {
    fill(blueHover);
    rect(BlueX, BlueY, BlueWidth, BlueHeight);
  } else if (Blue==false) {
    fill(blue);
    rect(BlueX, BlueY, BlueWidth, BlueHeight);
  }
  //
  if (mouseX>=PurpleX && mouseX<=PurpleX+PurpleWidth && mouseY>=PurpleY && mouseY<=PurpleY+PurpleHeight) {
    fill(purple);
    rect(PurpleX, PurpleY, PurpleWidth, PurpleHeight);
  } else if (Purple==false) {
    fill(purpleHover);
    rect(PurpleX, PurpleY, PurpleWidth, PurpleHeight);
  }
  //
  if (mouseX>=BrownX && mouseX<=BrownX+BrownWidth && mouseY>=BrownY && mouseY<=BrownY+BrownHeight) {
    fill(brownHover);
    rect(BrownX, BrownY, BrownWidth, BrownHeight);
  } else if (Brown==false) {
    fill(brown);
    rect(BrownX, BrownY, BrownWidth, BrownHeight);
  }
      if (mouseX>=BlackX && mouseX<=BlackX+BlackWidth && mouseY>=BlackY && mouseY<=BlackY+BlackHeight) {
    fill(blackHover);
    rect(BlackX, BlackY, BlackWidth, BlackHeight);
  } else if (Black==false) {
    fill(black);
    rect(BlackX, BlackY, BlackWidth, BlackHeight);
  }
  
  if (mouseX>=WhiteX && mouseX<=WhiteX+WhiteWidth && mouseY>=WhiteY && mouseY<=WhiteY+WhiteHeight) {
    fill(whiteHover);
    rect(WhiteX, WhiteY, WhiteWidth, WhiteHeight);
  } else if (White==false) {
    fill(resetWhite);
    rect(WhiteX, WhiteY, WhiteWidth, WhiteHeight);
  }

PImage eraserimage, pencil;
eraserimage = loadImage("eraser.jpg");
pencil= loadImage("pencil.jpg");
  //draw
  fill(resetWhite);
  rect(lineBX, lineBY, lineBWidth, lineBHeight);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);
  
 if (mouseX>=lineBX && mouseX<=lineBX+lineBWidth && mouseY>=lineBY && mouseY<=lineBY+lineBHeight) {
    fill(buttonHover);
    rect(lineBX, lineBY, lineBWidth, lineBHeight);
    fill(black); 
  
  } else {
    fill(resetWhite);
    rect(lineBX, lineBY, lineBWidth, lineBHeight);
    image(pencil,lineBX, lineBY, lineBWidth, lineBHeight);
 
  }
  if (mouseX>=eraserX && mouseX<=eraserX+eraserWidth && mouseY>=eraserY && mouseY<=eraserY+eraserHeight) {
    fill(buttonHover);
    rect(eraserX, eraserY, eraserWidth, eraserHeight);
    fill(black);

  } else {
    image(eraserimage, eraserX, eraserY, eraserWidth, eraserHeight);
    fill(resetWhite);
    rect(eraserX, eraserY, eraserWidth, eraserHeight);
    image(eraserimage, eraserX, eraserY, eraserWidth, eraserHeight);
  }
  //Color
  if (Red==true) {
    fill(redHover);
    rect(RedX, RedY, RedWidth, RedHeight);
  }
   if (Orang==true) {
    fill(OrangeHover);
    rect(OrangeX, OrangeY, OrangeWidth, OrangeHeight);
  }
  if (Yellow==true) {
    fill(yellowHover);
    rect(YellowX, YellowY, YellowWidth, YellowHeight);
  }
  if (Green==true) {
    fill(greenHover);
    rect(GreenX, GreenY, GreenWidth, GreenHeight);
  }
  if (Blue==true) {
    fill(blueHover);
    rect(BlueX, BlueY, BlueWidth, BlueHeight);
  }

  if (Purple==true) {
    fill(purpleHover);
    rect(PurpleX, PurpleY, PurpleWidth, PurpleHeight);
  }
  if (Brown==true) {
    fill(brownHover);
    rect(BrownX, BrownY, BrownWidth, BrownHeight);
  }
   if (Black==true) {
    fill(blackHover);
    rect(BlackX, BlackY, BlackWidth, BlackHeight);
  }
 
  if (White==true) {
    fill(whiteHover);
    rect(WhiteX, WhiteY, WhiteWidth, WhiteHeight);
  }
 
  if (Eraser==true) {
    fill(buttonHover);
    rect(eraserX, eraserY, eraserWidth, eraserHeight);
  }
  fill(black); //ink
  //Text
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/60);
  text(pencilT, lineBX, lineBY, lineBWidth, lineBHeight);
  text(eraserT, eraserX, eraserY, eraserWidth, eraserHeight);
  fill(resetWhite);

}
//
void colormousePressed() 
{
  //Red
  if (mouseX>=RedX && mouseX<=RedX+RedWidth && mouseY>=RedY && mouseY<=RedY+RedHeight) 
  {
    drawColor=red;
    Red=true;
    Blue=false;
    Brown=false;
    Green=false;
    Yellow=false;
    Purple=false;
    Orang=false;
    White=false;
    Black=false;
    Eraser=false;
  }
  //Blue
  if (mouseX>=BlueX && mouseX<=BlueX+BlueWidth && mouseY>=BlueY && mouseY<=BlueY+BlueHeight) 
  {
    drawColor=blue;
    Red=false;
    Blue=true;
    Green=false;
    White=false;
    Black=false;
    Yellow=false;
    Purple=false;
    Brown=false;
    Orang=false;
    Eraser=false;
  }
  //Green
  if (mouseX>=GreenX && mouseX<=GreenX+GreenWidth && mouseY>=GreenY && mouseY<=GreenY+GreenHeight) 
  {
    drawColor=green;
    Red=false;
    Purple=false;
    Brown=false;
    Blue=false;
    Green=true;
    Yellow=false;
    Orang=false;
    White=false;
    Black=false;
    Eraser=false;
  }
  //Yellow
  if (mouseX>=YellowX && mouseX<=YellowX+YellowWidth && mouseY>=YellowY && mouseY<=YellowY+YellowHeight) 
  {
    drawColor=yellow;
    Red=false;
    Blue=false;
    Green=false;
    Yellow=true;
    Purple=false;
    Brown=false;
    Orang=false;
    White=false;
    Black=false;
    Eraser=false;
  }
  //Purple
  if (mouseX>=PurpleX && mouseX<=PurpleX+PurpleWidth && mouseY>=PurpleY && mouseY<=PurpleY+PurpleHeight) 
  {
    drawColor=purple;
    Red=false;
    Blue=false;
    Orang=false;
    White=false;
    Black=false;
    Green=false;
    Yellow=false;
    Purple=true;
    Brown=false;
    Eraser=false;
  }
  //Brown
  if (mouseX>=BrownX && mouseX<=BrownX+BrownWidth && mouseY>=BrownY && mouseY<=BrownY+BrownHeight) 
  {
    drawColor=brown;
    Blue=false;
    Green=false;
    Yellow=false;
    Purple=false;
    Red=false;
    Brown=true;
    Orang=false;
    White=false;
    Black=false;
    Eraser=false;
  }
  //Grey
  if (mouseX>=OrangeX && mouseX<=OrangeX+OrangeWidth && mouseY>=OrangeY && mouseY<=OrangeY+OrangeHeight) 
  {
    drawColor=Orange;
    Red=false;
    Blue=false;
    Orang=true;
    Green=false;
    Yellow=false;
    Purple=false;
    Brown=false;
    White=false;
    Black=false;
    Eraser=false;
  }
  //White
  if (mouseX>=WhiteX && mouseX<=WhiteX+WhiteWidth && mouseY>=WhiteY && mouseY<=WhiteY+WhiteHeight) 
  {
    drawColor=resetWhite;
    Red=false;
    Blue=false;
    Brown=false;
    Orang=false;
    White=true;
    Black=false;
    Green=false;
    Yellow=false;
    Purple=false;
    Eraser=false;
  }
  //Black
  if (mouseX>=BlackX && mouseX<=BlackX+BlackWidth && mouseY>=BlackY && mouseY<=BlackY+BlackHeight) 
  {
    drawColor=black;
    Red=false;
    Blue=false;
    Orang=false;
    White=false;
    Black=true;
    Eraser=false;
    Green=false;
    Yellow=false;
    Purple=false;
    Brown=false;
   
  }
  if (mouseX>=eraserX && mouseX<=eraserX+eraserWidth && mouseY>=eraserY && mouseY<=eraserY+eraserHeight) {
    drawColor=bgColour;
    Eraser=true;
    Brown=false;
    Red=false;
    Blue=false;
    Green=false;
    Yellow=false;
    Purple=false;
    Orang=false;
    White=false;
    Black=false;
  };
}//
