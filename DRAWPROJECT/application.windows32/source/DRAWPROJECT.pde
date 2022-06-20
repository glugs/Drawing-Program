import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables Drawing
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float squareDrawWidth, squareDrawHeight, triangleX1, triangleY1, triangleX2, triangleY2, triangleX3, triangleY3;
int reset=1, initialFontSize=55, strokeSize=2, shapeSize=1;
color quitBColour, drawColor, resetWhite=255, red=#FF0303, redHover=#952F2F,  Orange=#FA7F03, OrangeHover=#D67616, yellow=#F2FA19, yellowHover=#96A010,  green=#256710, greenHover=#388635, blue=#0F5CF2, blueHover=#071D90,  purple=#562889, purpleHover=#5D0B98, brown=#643900, brownHover=#5A3F0B,black=0, blackHover=#1D1B1F, whiteHover=#D8D5CD;
color buttonHover=#A7DCE5, bgColour=resetWhite;
boolean shapesdrop=false,  lineSHP=true, circleSHP=false, squareSHP=false, triangleSHP=false, strokedrop=false, colourdrop=false, backgrounddr=false, templatedrop=false;
boolean Redbg=false, Orangebg=false,  Yellowbg=false, Greenbg=false, Bluebg=false, Purplebg=false, Brownbg=false,   Blackbg=false, Whitebg=true;
PFont font;

//Global Variables Music
Minim minim;
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //WAV, AIFF, AU, SND, and MP3
int currentSong = numberOfSongs - numberOfSongs; //Current Song is 0
//
void setup() 
{
  //
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("MusicDownload/loaf.mp3");
  song[currentSong + 1] = minim.loadFile("MusicDownload/chill-lofi-song-8444.mp3");
  song[currentSong + 2] = minim.loadFile("MusicDownload/coffee-chill-out-15283.mp3");
  song[currentSong + 3] = minim.loadFile("MusicDownload/lofi-hip-hop-11489.mp3");
  song[currentSong + 4] = minim.loadFile("MusicDownload/lofi-study-112191.mp3");
  fullScreen(); //displayWidth, displayHeight
  //
  populationSetup();

  //
  strokeWeight(3);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  strokeWeight(reset);
}//End Setup
//
void draw() 
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
void mousePressed() 
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
void mouseReleased() {
  draw=false;
}
//
