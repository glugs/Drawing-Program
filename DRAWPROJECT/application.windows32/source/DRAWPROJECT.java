import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class DRAWPROJECT extends PApplet {







//Global Variables Drawing
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float squareDrawWidth, squareDrawHeight, triangleX1, triangleY1, triangleX2, triangleY2, triangleX3, triangleY3;
int reset=1, initialFontSize=55, strokeSize=2, shapeSize=1;
int quitBColour, drawColor, resetWhite=255, red=0xffFF0303, redHover=0xff952F2F,  Orange=0xffFA7F03, OrangeHover=0xffD67616, yellow=0xffF2FA19, yellowHover=0xff96A010,  green=0xff256710, greenHover=0xff388635, blue=0xff0F5CF2, blueHover=0xff071D90,  purple=0xff562889, purpleHover=0xff5D0B98, brown=0xff643900, brownHover=0xff5A3F0B,black=0, blackHover=0xff1D1B1F, whiteHover=0xffD8D5CD;
int buttonHover=0xffA7DCE5, bgColour=resetWhite;
boolean shapesdrop=false,  lineSHP=true, circleSHP=false, squareSHP=false, triangleSHP=false, strokedrop=false, colourdrop=false, backgrounddr=false, templatedrop=false;
boolean Redbg=false, Orangebg=false,  Yellowbg=false, Greenbg=false, Bluebg=false, Purplebg=false, Brownbg=false,   Blackbg=false, Whitebg=true;
PFont font;

//Global Variables Music
Minim minim;
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //WAV, AIFF, AU, SND, and MP3
int currentSong = numberOfSongs - numberOfSongs; //Current Song is 0
//
public void setup() 
{
  //
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("MusicDownload/loaf.mp3");
  song[currentSong + 1] = minim.loadFile("MusicDownload/chill-lofi-song-8444.mp3");
  song[currentSong + 2] = minim.loadFile("MusicDownload/coffee-chill-out-15283.mp3");
  song[currentSong + 3] = minim.loadFile("MusicDownload/lofi-hip-hop-11489.mp3");
  song[currentSong + 4] = minim.loadFile("MusicDownload/lofi-study-112191.mp3");
   //displayWidth, displayHeight
  //
  populationSetup();

  //
  strokeWeight(3);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  strokeWeight(reset);
}//End Setup
//
public void draw() 
{
  //
  cursordraw();
 
   musicdraw();


  buttonQuit();
  clearButtonDraw();
  strokebuttonDraw();
  colourButtonDraw();
  BBackgroundDraw();
  BShapeDraw();
  BTemplateDraw();
  if (templatedrop==true) TemplateDraw();
  if (colourdrop==true) Drawdrop();
  if (strokedrop==true) StrokeDraw();
  if (backgrounddr==true) BackgroundDraw();
  if (shapesdrop==true) ShapeDraw();
  //Drawing Tools, with combined Boolean
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (lineSHP==true) {
      stroke(drawColor);
    } else {
      stroke(reset);
    }
    if (lineSHP==false) noStroke();
    strokeWeight(strokeSize);
    fill(drawColor);
    if (lineSHP==true) line( mouseX, mouseY, pmouseX, pmouseY );
    if (squareSHP==true) rect(mouseX, mouseY, squareDrawWidth*shapeSize/2, squareDrawHeight*shapeSize/2);
    if (triangleSHP==true) triangle( mouseX-(displayWidth/50*shapeSize), mouseY+(displayHeight/25*shapeSize), mouseX, mouseY, mouseX+(displayWidth/50*shapeSize), mouseY+(displayHeight/25*shapeSize));;
    if (circleSHP==true) ellipse( mouseX, mouseY, drawingDiameter*shapeSize, drawingDiameter*shapeSize);
    
    fill(resetWhite);
    strokeWeight(reset);
    stroke(reset);
  }//End Line Draw
}//End Draw
//
//
public void mousePressed() 
{
  musicplayer();
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) 
  {
    //
    draw = true;
  }//Button Paper (Drawing Surface)
  buttonQuitmousePressed();
  clearButtonmousePressed();
  strokebuttonmousePressed();
  BShapemousePressed();
  StrokemousePressed();
  colourButtonmousePressed();
  backgroundButtonmousePressed();
  BTemplatemousePressed();
  if (templatedrop==true) TemplatemousePressed();
  if (colourdrop==true) colormousePressed();
  if (backgrounddr==true) backgroundmousePressed();
  if (shapesdrop==true) ShapemousePressed();
  
}//End mousePressed
//
public void mouseReleased() {
  draw=false;
}
//
//Global Variables
float templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight;
String templateText = "TEMPLATES";
float templateX1, templateY1, templateWidth1, templateHeight1, templateX2, templateY2, templateWidth2, templateHeight2, templateX3, templateY3, templateWidth3, templateHeight3, templateX4, templateY4, templateWidth4, templateHeight4;
PImage template1, template2, template3, template4;
int sky=0xffE3FAF8;
//
public void BTemplateDraw() {
  if (mouseX>=templateButtonX && mouseX<=templateButtonX+templateButtonWidth && mouseY>=templateButtonY && mouseY<=templateButtonY+templateButtonHeight) {
    fill(buttonHover);
    rect(templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight);
  } else if (templatedrop==true) {
    fill(buttonHover);
    rect(templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight);
  } else {
    fill(resetWhite);
    rect(templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight);
  }
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/70);
  text(templateText, templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight);
  fill(resetWhite);
}
//
public void BTemplatemousePressed() {
  if (mouseX>=templateButtonX && mouseX<=templateButtonX+templateButtonWidth && mouseY>=templateButtonY && mouseY<=templateButtonY+templateButtonHeight) {
    if (templatedrop==false) {
      templatedrop=true;
    } else {
      templatedrop=false;
    }
  }
}

//
public void TemplateDraw() {
 
  
  //
  rect(templateX1, templateY1, templateWidth1, templateHeight1);
  image(template1, templateX1, templateY1, templateWidth1, templateHeight1);
  if (mouseX>=templateX1 && mouseX<=templateX1+templateWidth1 && mouseY>=templateY1 && mouseY<=templateY1+templateHeight1) {
    fill(sky, 75);
    rect(templateX1, templateY1, templateWidth1, templateHeight1);
    fill(resetWhite);
  }
  //
  rect(templateX2, templateY2, templateWidth2, templateHeight2);
  image(template2, templateX2, templateY2, templateWidth2, templateHeight2);
  if (mouseX>=templateX2 && mouseX<=templateX2+templateWidth2 && mouseY>=templateY2 && mouseY<=templateY2+templateHeight2) {
    fill(sky, 75);
    rect(templateX2, templateY2, templateWidth2, templateHeight2);
    fill(resetWhite);
  }
  //
  rect(templateX3, templateY3, templateWidth3, templateHeight3);
  image(template3, templateX3, templateY3, templateWidth3, templateHeight3);
  if (mouseX>=templateX3 && mouseX<=templateX3+templateWidth3 && mouseY>=templateY3 && mouseY<=templateY3+templateHeight3) {
    fill(sky, 75);
    rect(templateX3, templateY3, templateWidth3, templateHeight3);
    fill(resetWhite);
  }
  //
  rect(templateX4, templateY4, templateWidth4, templateHeight4);
  image(template4, templateX4, templateY4, templateWidth4, templateHeight4);
  if (mouseX>=templateX4 && mouseX<=templateX4+templateWidth4 && mouseY>=templateY4 && mouseY<=templateY4+templateHeight4) {
    fill(sky, 75);
    rect(templateX4, templateY4, templateWidth4, templateHeight4);
    fill(resetWhite);
  }
}// 
//
public void TemplatemousePressed() {
  
  
  if (mouseX>=templateX1 && mouseX<=templateX1+templateWidth1 && mouseY>=templateY1 && mouseY<=templateY1+templateHeight1) {
    bgColour=resetWhite;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    image(template1, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>=templateX2 && mouseX<=templateX2+templateWidth2 && mouseY>=templateY2 && mouseY<=templateY2+templateHeight2) {
    bgColour=resetWhite;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    image(template2, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>=templateX3 && mouseX<=templateX3+templateWidth3 && mouseY>=templateY3 && mouseY<=templateY3+templateHeight3) {
    bgColour=resetWhite;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    image(template3, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>=templateX4 && mouseX<=templateX4+templateWidth4 && mouseY>=templateY4 && mouseY<=templateY4+templateHeight4) {
    bgColour=resetWhite;
    fill(bgColour);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    image(template4, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  }
}//
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
boolean bkRed=false, bkBlue=false, bkGreen=false, bkYellow=false, bkPurple=false, bkBrown=false, bkGrey=false, bkWhite=false, bkBlack=true;
//
public void BBackgroundDraw () {
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
  textFont(font, displayWidth/70);
  text(backgroundText , backgroundButtonX, backgroundButtonY, backgroundButtonWidth, backgroundButtonHeight);
  fill(resetWhite);
}
public void backgroundButtonmousePressed() {
  if (mouseX>=backgroundButtonX && mouseX<=backgroundButtonX+backgroundButtonWidth && mouseY>=backgroundButtonY && mouseY<=backgroundButtonY+backgroundButtonHeight) {
    if (backgrounddr==false) {backgrounddr=true;} else {backgrounddr=false;}
  }
}
//
public void BackgroundDraw() {
  rect(backgrounddropX, backgrounddropY, backgrounddropWidth, backgrounddropHeight);
  //
  
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
public void backgroundmousePressed() {
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
float clearBX, clearBY, clearBW, clearBH;
int clearButtonColour;
//
public void clearButtonDraw() {
  fill(clearButtonColour);
      strokeWeight(3);
  rect(clearBX, clearBY, clearBW, clearBH);
  stroke(reset);
  fill(resetWhite);
  //
  //
  if (mouseX>=clearBX && mouseX<=clearBX+clearBW && mouseY>=clearBY && mouseY<=clearBY+clearBH) 
  {
    clearButtonColour = 0xff759574;
  } else {
    clearButtonColour = 0xff85AF85;
  }//
  fill(0xffFFFDD0); //Ink
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/40);
  text("CLEAR", clearBX, clearBY, clearBW, clearBH);
  fill(resetWhite);
}
//
public void clearButtonmousePressed() {
  if ( mouseX>=clearBX && mouseX<=clearBX+clearBW && mouseY>=clearBY && mouseY<=clearBY+clearBH) {
    bgColour=resetWhite;
    fill(bgColour);
    strokeWeight(3);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    strokeWeight(reset);
  }
}
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
public void colourButtonDraw() 
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
public void colourButtonmousePressed() {
  if (mouseX>=drawButtonX && mouseX<=drawButtonX+drawButtonWidth && mouseY>=drawButtonY && mouseY<=drawButtonY+drawButtonHeight) {
    if (colourdrop==false) {colourdrop=true;} else {colourdrop=false;}
  }
}

//
public void Drawdrop() 
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
public void colormousePressed() 
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
public void cursordraw() 
{
 PImage mouseCursor;

  mouseCursor = loadImage("mouse.jpg");
  if(mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    cursor(mouseCursor, 0, 0);
  } else {
    cursor(ARROW);
  }
}
 int  white=0xffFFFFFF, gray=0xffCBCBCB,
grey=0xff868686;
float musicX, musicY, musicHeight, musicWidth, musicbackX, musicbackY, musicbackW, musicbackH;
float playpawsX, playpawsY, playpawsD;
float  skipW, skipH, loopX, loopY,  backX, backY,muteX, muteY,forwardX, forwardY;
Boolean musicBON = false;
Boolean musicRESET = false;
PImage pause, play, next, previous, loop, mute;
Boolean pauseON = false;
Boolean playON = false;
float loopCount;
//
public void musicdraw () {
 PImage record,listen,rad;
record=loadImage("listen.jpg");
listen=loadImage("record.jpg");
rad=loadImage("rect.png");

  if(mouseX>=musicX && mouseX<=musicX+musicWidth && mouseY>=musicY && mouseY<=musicY+musicHeight) {
    noStroke();
    fill (white);
    rect(musicX, musicY, musicWidth, musicHeight);
    fill (black);
    stroke(reset);
   image(record, musicX, musicY, musicWidth, musicHeight);


  } else {
    noStroke();
    image(record, musicX, musicY, musicWidth, musicHeight);
    fill (black);
    rect(musicX, musicY, musicWidth, musicHeight);
    fill (0xffCECECE);
    stroke(reset);
    image(listen, musicX, musicY, musicWidth, musicHeight);

  }
  
  
  if (musicBON == true) {
  noStroke();
 // rect( musicbackX, musicbackY, musicbackW, musicbackH);
  
   image(rad, displayWidth*0.76f, displayHeight*0.08f, displayWidth/4, displayHeight/6);

  image(loop, loopX, loopY, skipW, skipH);
  
  image(mute, muteX, muteY, skipW, skipH);
  
  image(play, playpawsX, playpawsY, playpawsD, playpawsD);
  
  image(next, forwardX, forwardY, skipW, skipH);
  
  image(previous, backX, backY, skipW, skipH);
  
    
 stroke(reset); }

 
 if (pauseON == true) {
  noStroke(); 
  fill(0xffCECECE);
  rect(playpawsX, playpawsY, playpawsD, playpawsD);
  
  image(pause, playpawsX, playpawsY, playpawsD, playpawsD);
   
 stroke(reset);}
 
 if (playON == true) {
  noStroke(); 
  rect(playpawsX, playpawsY, playpawsD, playpawsD);
  image(play, playpawsX, playpawsY, playpawsD, playpawsD);
   
 stroke(reset);}
 
  
 if (musicRESET == true) {
   noStroke();
   fill(white);
       rect( musicbackX, musicbackY, musicbackW, musicbackH);
      fill(white);
      stroke(reset);
 }
 
} 
public void musicplayer () {
  playpauseB();
  fastforward();
  rback();
  mute();
  loop();


  if (mouseX>musicX && mouseX<musicX+musicWidth && mouseY>musicY && mouseY<musicY+musicHeight) {
    if (musicBON == false) {
      musicBON = true;
      musicRESET = false;
    } else {
      musicBON = false;
      musicRESET = true;
    }
}

}

public void playpauseB() {
  
  if (mouseX>playpawsX && mouseX<playpawsX+playpawsD && mouseY>playpawsY && mouseY<playpawsY+playpawsD) {
    if (pauseON == false) {
      pauseON = true;
      playON = false;
    } else {
      pauseON = false;
      playON = true;
    }
    
     if (playON == true) 
     song[currentSong].loop(0); 
     
     if ( pauseON == true && song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
}}

public void fastforward() {
  if (mouseX>forwardX && mouseX<forwardX+skipW && mouseY>forwardY && mouseY<forwardY+skipH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      
      arrayFixError();
      
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      arrayFixError();
    }
  }
}

public void rback () {
  if (mouseX>backX && mouseX<backX+skipW && mouseY>backY && mouseY<backY+skipH) {
      if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      //
      arrayFixError2();
      //
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      arrayFixError2();
    }
    
    
  }
}


public void mute() {
if (mouseX>muteX && mouseX<muteX+skipW && mouseY>muteY && mouseY<muteY+skipH) {
    if ( song[currentSong].isPlaying() ) {
  song[currentSong].pause();
  song[currentSong].rewind();
  } else {
  song[currentSong].play();
  
  }
  
}
}

public void loop() {
  if (mouseX>loopX && mouseX<loopX+skipW && mouseY>loopY && mouseY<loopY+skipH) {

    
    String keystr = String.valueOf(key);
  int num = PApplet.parseInt (keystr);
  if ( num > 1 && num < 4 )
  
    song[currentSong].loop(num);
    loopCount = num;
    
    
  }
}
  public void arrayFixError() {
  if ( currentSong == numberOfSongs - 1 ) {
    currentSong= numberOfSongs - numberOfSongs;
  } else {
    currentSong ++;
  }
}

public void arrayFixError2() {
  if ( currentSong == numberOfSongs - numberOfSongs ) {
    currentSong= numberOfSongs - 1;
  } else {
    currentSong --;
  }
}
//
public void populationSetup() 
{
   font = createFont ("Monospaced.plain", initialFontSize);
 drawingSurfaceX = displayWidth*0;
  drawingSurfaceY = displayHeight*0.25f;
  drawingSurfaceWidth = displayWidth*3/4;
  drawingSurfaceHeight = displayHeight*15/20;
  drawingDiameter = displayWidth*1/100;
  squareDrawWidth=displayWidth*0.04f;
  squareDrawHeight=displayHeight*0.06f;
 
  //
  
 
  //
 
  backgroundButtonX =displayWidth*0;
  backgroundButtonY =displayHeight*0;
  backgroundButtonWidth =displayWidth*0.2f;
  backgroundButtonHeight =displayHeight*1/20;
  drawButtonX =displayWidth*0.82f;
  drawButtonY =displayHeight*0;
  drawButtonWidth =displayWidth*1/10;
  drawButtonHeight =displayHeight*1/20;
  strokeTX =displayWidth*0.6f;
  strokeTY =displayHeight*0;
  strokeTW =displayWidth*0.2f;
  strokeTH =displayHeight*1/20;
  ShapeButtonX =displayWidth*0.4f;
  ShapeButtonY =displayHeight*0;
  ShapeButtonWidth =displayWidth*0.2f;
  ShapeButtonHeight =displayHeight*1/20;
  templateButtonX =displayWidth*0.2f;
  templateButtonY =displayHeight*0;
  templateButtonWidth =displayWidth*0.2f;
  templateButtonHeight =displayHeight*1/20;
  //
  eraserX =displayWidth*0.78f;
  eraserY =displayHeight*0.56f;
  eraserWidth =displayWidth*0.2f;
  eraserHeight =displayHeight*0.08f;
  lineBX =displayWidth*0.78f;
  lineBY =displayHeight*0.25f;
  lineBWidth =displayWidth*0.2f;
  lineBHeight =displayHeight*0.07f;
  //
  dropX =displayWidth*.78f;
  dropY =displayHeight*0.25f;
  dropWidth =displayWidth*0.2f;
  dropHeight =displayHeight*0.38f;
  RedX =displayWidth*0.78f;
  RedY =displayHeight*0.32f;
  RedWidth =displayWidth*1/15;
  RedHeight =displayHeight*0.08f;
  OrangeX =displayWidth*0.847f;
  OrangeY =displayHeight*0.32f;
  OrangeWidth =displayWidth*1/15;
  OrangeHeight =displayHeight*0.08f;
  YellowX =displayWidth*0.914f;
  YellowY =displayHeight*0.32f;
  YellowWidth =displayWidth*1/15;
  YellowHeight =displayHeight*0.08f;
  GreenX =displayWidth*0.78f;
  GreenY =displayHeight*0.4f;
  GreenWidth =displayWidth*1/15;
  GreenHeight =displayHeight*0.08f;
  BlueX =displayWidth*0.847f;
  BlueY =displayHeight*0.4f;
  BlueWidth =displayWidth*1/15;
  BlueHeight =displayHeight*0.08f; 
  PurpleX =displayWidth*0.914f;
  PurpleY =displayHeight*0.4f;
  PurpleWidth =displayWidth*1/15;
  PurpleHeight =displayHeight*0.08f;  
  BrownX =displayWidth*0.78f;
  BrownY =displayHeight*0.48f;
  BrownWidth =displayWidth*1/15;
  BrownHeight =displayHeight*0.08f;
  BlackX =displayWidth*0.847f;
  BlackY =displayHeight*0.48f;
  BlackWidth =displayWidth*1/15;
  BlackHeight =displayHeight*0.08f;
  WhiteX =displayWidth*0.914f;
  WhiteY =displayHeight*0.48f;
  WhiteWidth =displayWidth*1/15;
  WhiteHeight =displayHeight*0.08f;
  
  //
  

  stroke1X=displayWidth*0.6f;
  stroke1Y=displayHeight*0.05f;
  stroke1Width=displayWidth*0.06f;
  stroke1Height=displayHeight*0.07f;
  stroke2X=displayWidth*0.65f;
  stroke2Y=displayHeight*0.05f;
  stroke2Width=displayWidth*0.07f;
  stroke2Height=displayHeight*0.07f;
  stroke3X=displayWidth*0.72f;
  stroke3Y=displayHeight*0.05f;
  stroke3Width=displayWidth*0.08f;
  stroke3Height=displayHeight*0.07f;
  //
  backgrounddropX =displayWidth*0;
  backgrounddropY =displayHeight*0.05f;
  backgrounddropWidth =displayWidth*0.2f;
  backgrounddropHeight =displayHeight*0.154f;
  backgroundRedX =displayWidth*0;
  backgroundRedY =displayHeight*0.05f;
  backgroundRedWidth =displayWidth*0.066f;
  backgroundRedHeight =displayHeight*1/20;
  backgroundOrangeX =displayWidth*0.067f;
  backgroundOrangeY =displayHeight*0.05f;
  backgroundOrangeWidth =displayWidth*0.066f;
  backgroundOrangeHeight =displayHeight*1/20;
  backgroundYellowX =displayWidth*0.134f;
  backgroundYellowY =displayHeight*0.05f;
  backgroundYellowWidth =displayWidth*0.066f;
  backgroundYellowHeight =displayHeight*1/20;
  backgroundGreenX =displayWidth*0;
  backgroundGreenY =displayHeight*0.101f;
  backgroundGreenWidth =displayWidth*0.066f;
  backgroundGreenHeight =displayHeight*1/20;
  backgroundBlueX =displayWidth*0.067f;
  backgroundBlueY =displayHeight*0.101f;
  backgroundBlueWidth =displayWidth*0.066f;
  backgroundBlueHeight =displayHeight*1/20;
  backgroundPurpleX =displayWidth*0.134f;
  backgroundPurpleY =displayHeight*0.101f;
  backgroundPurpleWidth =displayWidth*0.066f;
  backgroundPurpleHeight =displayHeight*1/20;
  backgroundBrownX =displayWidth*0;
  backgroundBrownY =displayHeight*0.151f;
  backgroundBrownWidth =displayWidth*0.066f;
  backgroundBrownHeight =displayHeight*1/20;
  backgroundBlackX =displayWidth*0.067f;
  backgroundBlackY =displayHeight*0.151f;
  backgroundBlackWidth =displayWidth*0.066f;
  backgroundBlackHeight =displayHeight*1/20;
  backgroundWhiteX =displayWidth*0.134f;
  backgroundWhiteY =displayHeight*0.1518f;
  backgroundWhiteWidth =displayWidth*0.066f;
  backgroundWhiteHeight =displayHeight*1/20;
 
  //
  shapedropX =displayWidth*0.4f;
  shapedropY =backgroundRedY;
  shapedropWidth =  ShapeButtonWidth;
  shapedropHeight =displayHeight*4/20;
  lineX =displayWidth*0.43f;
  lineY =displayHeight*0.07f;
  lineWidth =displayWidth*1.2f/20;
  lineHeight =displayHeight*1.2f/20;
  cirleX =displayWidth*0.5f;
  circleY =displayHeight*0.07f;
  circleWidth =displayWidth*1.2f/20;
  circleHeight =displayHeight*1.2f/20;
  squareX =displayWidth*0.5f;
  squareY =displayHeight*0.16f;
  squareWidth =displayWidth*1.2f/20;
  squareHeight =displayHeight*1.2f/20;
  triangleX =displayWidth*0.43f;
  triangleY =displayHeight*0.16f;
  triangleWidth =displayWidth*1.2f/20;
  triangleHeight =displayHeight*1.2f/20;
  //
  
  
  musicX = displayWidth*0.78f;
  musicY = displayHeight*0.67f;
  
  musicWidth = displayWidth*0.2f;
  musicHeight =  displayHeight*0.18f;
  
  musicbackX = displayWidth*1/10;
  musicbackY = displayHeight*5/8;
  musicbackH = displayWidth*2/10;
  musicbackW = displayHeight*3;
  play = loadImage("Images/play.png");
  pause = loadImage("Images/pause.png");
  next = loadImage("Images/forward.png");
  previous = loadImage("Images/reverse.png");
  loop = loadImage("Images/loop.png");
  mute = loadImage("Images/mute.png");
  playpawsX =  displayWidth*0.87f;
  playpawsY = displayHeight*0.14f;
  playpawsD = displayHeight*1/16;
  forwardX = playpawsX + musicbackX*1.2f/3;
  forwardY = playpawsY;
  backX = playpawsX - musicbackX*1/3;
  backY = playpawsY;
  skipW = displayWidth*1/32;
  skipH = displayHeight*1/15;
  loopX = playpawsX +  musicbackX*2.3f/3;
  loopY = playpawsY;
  muteX = playpawsX -  musicbackX*2.2f/3;
  muteY = playpawsY;
  //
  templateX1=displayWidth*0.2f;
  templateY1= backgroundRedY;
  templateWidth1=displayWidth*2/20;
  templateHeight1=displayHeight*2/20;
  templateX2=displayWidth*0.3f;
  templateY2=displayHeight*0.05f;
  templateWidth2=displayWidth*2/20;
  templateHeight2=displayHeight*2/20;
  templateX3=templateX2;
  templateY3=displayHeight*0.152f;
  templateWidth3=displayWidth*2/20;
  templateHeight3=displayHeight*0.096f;
  templateX4=templateX1;
  templateY4=displayHeight*0.1518f;
  templateWidth4=displayWidth*2/20;
  templateHeight4=displayHeight*0.096f;
  template1 = loadImage("Images/space.jpg");
  template2 = loadImage("Images/adventure.jpg");
  template3 = loadImage("Images/mushroom.jpg");
  template4 = loadImage("Images/gravity.jpg");
  clearBX=displayWidth*0.78f;
  clearBY=displayHeight*18/20;
  clearBW=displayWidth*0.2f;
  clearBH=displayHeight*0.08f;
  quitButtonX =displayWidth*0.95f;
  quitButtonY =displayHeight*0;
  quitButtonWidth =displayWidth*0.05f;
  quitButtonHeight =displayHeight*1/20;
}
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
String quitT="X";
//
public void buttonQuit() 
{
  fill(quitBColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  fill(resetWhite);
  //
  
  if (mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) 
  {
    quitBColour = 0xffFCFAE0;
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
public void buttonQuitmousePressed() 
{
  if(mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
}
float ShapeButtonX, ShapeButtonY, ShapeButtonWidth, ShapeButtonHeight;
String ShapeText = "SHAPES";
float shapedropX, shapedropY, shapedropWidth, shapedropHeight;
float cirleX, circleY, circleWidth, circleHeight, squareX, squareY, squareWidth, squareHeight, triangleX, triangleY, triangleWidth, triangleHeight, lineX, lineY, lineWidth, lineHeight;
float shapeTX, shapeTY, shapeTWidth, shapeTHeight;
String  period=".";
int RedLowerButtonHO=0xff980F0B, RedLowerButton=0xffF20F07, GreenHigherButtonHO=0xff14890C, GreenHigherButton=0xff0FB704;
//
public void BShapeDraw() {
  if (mouseX>=ShapeButtonX && mouseX<=ShapeButtonX+ShapeButtonWidth && mouseY>=ShapeButtonY && mouseY<=ShapeButtonY+ShapeButtonHeight) {
    fill(buttonHover);
    rect(ShapeButtonX, ShapeButtonY, ShapeButtonWidth, ShapeButtonHeight);
  } else if (shapesdrop==true) {
    fill(buttonHover);
    rect(ShapeButtonX, ShapeButtonY, ShapeButtonWidth, ShapeButtonHeight);
  } else {
    fill(resetWhite);
    rect(ShapeButtonX, ShapeButtonY, ShapeButtonWidth, ShapeButtonHeight);
  }
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/60);
  text(ShapeText, ShapeButtonX, ShapeButtonY, ShapeButtonWidth, ShapeButtonHeight);
  fill(resetWhite);
}
//
public void BShapemousePressed() {
  if (mouseX>=ShapeButtonX && mouseX<=ShapeButtonX+ShapeButtonWidth && mouseY>=ShapeButtonY && mouseY<=ShapeButtonY+ShapeButtonHeight) {
    if (shapesdrop==false) {shapesdrop=true;} else {shapesdrop=false;}
  }
}

//
public void ShapeDraw() {
  PImage tri,squ, circ,lin;
  tri=loadImage("tri.png");
  squ=loadImage("square.png");
  circ=loadImage("circle.jpg");
  lin=loadImage("line.jpg");
  rect(shapedropX, shapedropY, shapedropWidth, shapedropHeight);
 
  //
  if (mouseX>=lineX && mouseX<=lineX+lineWidth && mouseY>=lineY && mouseY<=lineY+lineHeight || lineSHP==true) {
    fill(buttonHover);
    rect(lineX, lineY, lineWidth, lineHeight);
  
  } else {
    fill(resetWhite);
    rect(lineX, lineY, lineWidth, lineHeight);
    image(lin,lineX, lineY, lineWidth, lineHeight);
    
  }
  if (mouseX>=cirleX && mouseX<=cirleX+circleWidth && mouseY>=circleY && mouseY<=circleY+circleHeight || circleSHP==true) {
    fill(buttonHover);
    rect(cirleX, circleY, circleWidth, circleHeight);
     
  } else {
    fill(resetWhite);
    rect(cirleX, circleY, circleWidth, circleHeight);
    image(circ,cirleX, circleY, circleWidth, circleHeight);
   
  }
  
  if (mouseX>=squareX && mouseX<=squareX+squareWidth && mouseY>=squareY && mouseY<=squareY+squareHeight || squareSHP==true) {
    fill(buttonHover);
    rect(squareX, squareY, squareWidth, squareHeight);
  } else {
    fill(resetWhite);
    rect(squareX, squareY, squareWidth, squareHeight);
    image(squ,squareX, squareY, squareWidth, squareHeight);
    
  }
  if (mouseX>=triangleX && mouseX<=triangleX+triangleWidth && mouseY>=triangleY && mouseY<=triangleY+triangleHeight || triangleSHP==true) {
    fill(buttonHover);
    rect(triangleX, triangleY, triangleWidth, triangleHeight);
     
  } else {
    fill(resetWhite);
    rect(triangleX, triangleY, triangleWidth, triangleHeight);
    image(tri,triangleX, triangleY, triangleWidth, triangleHeight);
     
  }
 
}//End ShapeDraw
//
//
public void ShapemousePressed() {

  if (mouseX>=lineX && mouseX<=lineX+lineWidth && mouseY>=lineY && mouseY<=lineY+lineHeight || lineSHP==true) {
    lineSHP=true;
    circleSHP=false;
    squareSHP=false;
    triangleSHP=false;
  }
  if (mouseX>=cirleX && mouseX<=cirleX+circleWidth && mouseY>=circleY && mouseY<=circleY+circleHeight) {
    lineSHP=false;
    circleSHP=true;
    squareSHP=false;
    triangleSHP=false;
  }
  if (mouseX>=squareX && mouseX<=squareX+squareWidth && mouseY>=squareY && mouseY<=squareY+squareHeight) {
    lineSHP=false;
    circleSHP=false;
    squareSHP=true;
    triangleSHP=false;
  }
  if (mouseX>=triangleX && mouseX<=triangleX+triangleWidth && mouseY>=triangleY && mouseY<=triangleY+triangleHeight) {
    lineSHP=false;
    circleSHP=false;
    squareSHP=false;
    triangleSHP=true;
  }
  println(shapeSize);
}
float strokedropX, strokedropY, strokedropWidth, strokedropHeight;
float stroke1X, stroke1Y, stroke1Width, stroke1Height, stroke2X, stroke2Y, stroke2Width, stroke2Height, stroke3X, stroke3Y, stroke3Width, stroke3Height;
String one="1X", two="2X", three="3X";
float strokeTX, strokeTY, strokeTW, strokeTH;
String strokeText = "THICKNESS";

//
//
public void strokebuttonDraw() {
 stroke(black);
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
  fill(black); 
  textAlign (CENTER, CENTER);
  textFont(font, displayWidth/70);
  text(strokeText, strokeTX, strokeTY, strokeTW, strokeTH);
  fill(resetWhite);
}//End strokebuttonDraw
//
public void strokebuttonmousePressed() 
{
  if (mouseX>=strokeTX && mouseX<=strokeTX+strokeTW && mouseY>=strokeTY && mouseY<=strokeTY+strokeTH) {
    if (strokedrop==false) {
      strokedrop=true;
    } else {
      strokedrop=false;
    }
  }
}
public void StrokeDraw()
{
  stroke(black);
  PImage small, medium, big;
small = loadImage("smalldot.png");
medium=loadImage("medium2.jpg");
big= loadImage("dot.jpg");
  rect(strokedropX, strokedropY, strokedropWidth, strokedropHeight);
  //
  fill(resetWhite);
  if (mouseX>=stroke1X && mouseX<=stroke1X+stroke1Width && mouseY>=stroke1Y && mouseY<=stroke1Y+stroke1Height || strokeSize==5) {
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
  if (mouseX>=stroke2X && mouseX<=stroke2X+stroke2Width && mouseY>=stroke2Y && mouseY<=stroke2Y+stroke2Height || strokeSize==15) {
    fill(buttonHover);
    rect(stroke2X, stroke2Y, stroke2Width, stroke2Height);
    fill(black);
    text(two,stroke2X, stroke2Y, stroke2Width, stroke2Height);
  } else {
    fill(resetWhite);
    rect(stroke2X, stroke2Y, stroke2Width, stroke2Height);
    image(big,stroke2X, stroke2Y, stroke2Width, stroke2Height);
  }
  if (mouseX>=stroke3X && mouseX<=stroke3X+stroke3Width && mouseY>=stroke3Y && mouseY<=stroke3Y+stroke3Height || strokeSize==25) {
    fill(buttonHover);
    rect(stroke3X, stroke3Y, stroke3Width, stroke3Height);
    fill(black);
    text(three,stroke3X, stroke3Y, stroke3Width, stroke3Height);
  } else {
    fill(resetWhite);
    rect(stroke3X, stroke3Y, stroke3Width, stroke3Height);
    image(medium,stroke3X, stroke3Y, stroke3Width, stroke3Height);
  }
 
} //
//
public void StrokemousePressed() {
  if (mouseX>=stroke1X && mouseX<=stroke1X+stroke1Width && mouseY>=stroke1Y && mouseY<=stroke1Y+stroke1Height) {
    strokeSize=5;
  }
  if (mouseX>=stroke2X && mouseX<=stroke2X+stroke2Width && mouseY>=stroke2Y && mouseY<=stroke2Y+stroke2Height) {
    strokeSize=15;
  }
  if (mouseX>=stroke3X && mouseX<=stroke3X+stroke3Width && mouseY>=stroke3Y && mouseY<=stroke3Y+stroke3Height) {
    strokeSize=25;
  }
  //
  //

  }
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "DRAWPROJECT" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
