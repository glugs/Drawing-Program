//
void populationSetup() 
{
   font = createFont ("Monospaced.plain", initialFontSize);
 drawingSurfaceX = displayWidth*0;
  drawingSurfaceY = displayHeight*0.25;
  drawingSurfaceWidth = displayWidth*3/4;
  drawingSurfaceHeight = displayHeight*15/20;
  drawingDiameter = displayWidth*1/100;
  squareDrawWidth=displayWidth*0.04;
  squareDrawHeight=displayHeight*0.06;
 
  //
  
  clearBX=displayWidth*0.78;
  clearBY=displayHeight*18/20;
  clearBW=displayWidth*0.2;
  clearBH=displayHeight*0.08;
  quitButtonX =displayWidth*0.95;
  quitButtonY =displayHeight*0;
  quitButtonWidth =displayWidth*0.05;
  quitButtonHeight =displayHeight*1/20;
  //
 
  backgroundButtonX =displayWidth*0;
  backgroundButtonY =displayHeight*0;
  backgroundButtonWidth =displayWidth*0.2;
  backgroundButtonHeight =displayHeight*1/20;
  drawButtonX =displayWidth*0.82;
  drawButtonY =displayHeight*0;
  drawButtonWidth =displayWidth*1/10;
  drawButtonHeight =displayHeight*1/20;
  strokeTX =displayWidth*0.6;
  strokeTY =displayHeight*0;
  strokeTW =displayWidth*0.2;
  strokeTH =displayHeight*1/20;
  ShapeButtonX =displayWidth*0.4;
  ShapeButtonY =displayHeight*0;
  ShapeButtonWidth =displayWidth*0.2;
  ShapeButtonHeight =displayHeight*1/20;
  templateButtonX =displayWidth*0.2;
  templateButtonY =displayHeight*0;
  templateButtonWidth =displayWidth*0.2;
  templateButtonHeight =displayHeight*1/20;
  //
  eraserX =displayWidth*0.78;
  eraserY =displayHeight*0.56;
  eraserWidth =displayWidth*0.2;
  eraserHeight =displayHeight*0.08;
  lineBX =displayWidth*0.78;
  lineBY =displayHeight*0.25;
  lineBWidth =displayWidth*0.2;
  lineBHeight =displayHeight*0.07;
  //
  dropX =displayWidth*.78;
  dropY =displayHeight*0.25;
  dropWidth =displayWidth*0.2;
  dropHeight =displayHeight*0.38;
  RedX =displayWidth*0.78;
  RedY =displayHeight*0.32;
  RedWidth =displayWidth*1/15;
  RedHeight =displayHeight*0.08;
  OrangeX =displayWidth*0.847;
  OrangeY =displayHeight*0.32;
  OrangeWidth =displayWidth*1/15;
  OrangeHeight =displayHeight*0.08;
  YellowX =displayWidth*0.914;
  YellowY =displayHeight*0.32;
  YellowWidth =displayWidth*1/15;
  YellowHeight =displayHeight*0.08;
  GreenX =displayWidth*0.78;
  GreenY =displayHeight*0.4;
  GreenWidth =displayWidth*1/15;
  GreenHeight =displayHeight*0.08;
  BlueX =displayWidth*0.847;
  BlueY =displayHeight*0.4;
  BlueWidth =displayWidth*1/15;
  BlueHeight =displayHeight*0.08; 
  PurpleX =displayWidth*0.914;
  PurpleY =displayHeight*0.4;
  PurpleWidth =displayWidth*1/15;
  PurpleHeight =displayHeight*0.08;  
  BrownX =displayWidth*0.78;
  BrownY =displayHeight*0.48;
  BrownWidth =displayWidth*1/15;
  BrownHeight =displayHeight*0.08;
  BlackX =displayWidth*0.847;
  BlackY =displayHeight*0.48;
  BlackWidth =displayWidth*1/15;
  BlackHeight =displayHeight*0.08;
  WhiteX =displayWidth*0.914;
  WhiteY =displayHeight*0.48;
  WhiteWidth =displayWidth*1/15;
  WhiteHeight =displayHeight*0.08;
  
  //
  

  stroke1X=displayWidth*0.6;
  stroke1Y=displayHeight*0.05;
  stroke1Width=displayWidth*0.06;
  stroke1Height=displayHeight*0.07;
  stroke2X=displayWidth*0.65;
  stroke2Y=displayHeight*0.05;
  stroke2Width=displayWidth*0.07;
  stroke2Height=displayHeight*0.07;
  stroke3X=displayWidth*0.72;
  stroke3Y=displayHeight*0.05;
  stroke3Width=displayWidth*0.08;
  stroke3Height=displayHeight*0.07;
  //
  backgrounddropX =displayWidth*0;
  backgrounddropY =displayHeight*0.05;
  backgrounddropWidth =displayWidth*0.2;
  backgrounddropHeight =displayHeight*0.154;
  backgroundRedX =displayWidth*0;
  backgroundRedY =displayHeight*0.05;
  backgroundRedWidth =displayWidth*0.066;
  backgroundRedHeight =displayHeight*1/20;
  backgroundOrangeX =displayWidth*0.067;
  backgroundOrangeY =displayHeight*0.05;
  backgroundOrangeWidth =displayWidth*0.066;
  backgroundOrangeHeight =displayHeight*1/20;
  backgroundYellowX =displayWidth*0.134;
  backgroundYellowY =displayHeight*0.05;
  backgroundYellowWidth =displayWidth*0.066;
  backgroundYellowHeight =displayHeight*1/20;
  backgroundGreenX =displayWidth*0;
  backgroundGreenY =displayHeight*0.101;
  backgroundGreenWidth =displayWidth*0.066;
  backgroundGreenHeight =displayHeight*1/20;
  backgroundBlueX =displayWidth*0.067;
  backgroundBlueY =displayHeight*0.101;
  backgroundBlueWidth =displayWidth*0.066;
  backgroundBlueHeight =displayHeight*1/20;
  backgroundPurpleX =displayWidth*0.134;
  backgroundPurpleY =displayHeight*0.101;
  backgroundPurpleWidth =displayWidth*0.066;
  backgroundPurpleHeight =displayHeight*1/20;
  backgroundBrownX =displayWidth*0;
  backgroundBrownY =displayHeight*0.151;
  backgroundBrownWidth =displayWidth*0.066;
  backgroundBrownHeight =displayHeight*1/20;
  backgroundBlackX =displayWidth*0.067;
  backgroundBlackY =displayHeight*0.151;
  backgroundBlackWidth =displayWidth*0.066;
  backgroundBlackHeight =displayHeight*1/20;
  backgroundWhiteX =displayWidth*0.134;
  backgroundWhiteY =displayHeight*0.1518;
  backgroundWhiteWidth =displayWidth*0.066;
  backgroundWhiteHeight =displayHeight*1/20;
 
  //
  shapedropX =displayWidth*0.4;
  shapedropY =backgroundRedY;
  shapedropWidth =  ShapeButtonWidth;
  shapedropHeight =displayHeight*4/20;
  lineX =displayWidth*0.43;
  lineY =displayHeight*0.07;
  lineWidth =displayWidth*1.2/20;
  lineHeight =displayHeight*1.2/20;
  cirleX =displayWidth*0.5;
  circleY =displayHeight*0.07;
  circleWidth =displayWidth*1.2/20;
  circleHeight =displayHeight*1.2/20;
  squareX =displayWidth*0.5;
  squareY =displayHeight*0.16;
  squareWidth =displayWidth*1.2/20;
  squareHeight =displayHeight*1.2/20;
  triangleX =displayWidth*0.43;
  triangleY =displayHeight*0.16;
  triangleWidth =displayWidth*1.2/20;
  triangleHeight =displayHeight*1.2/20;
  //
  
  
  musicX = displayWidth*0.78;
  musicY = displayHeight*0.67;
  
  musicWidth = displayWidth*0.2;
  musicHeight =  displayHeight*0.18;
  
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
  playpawsX =  displayWidth*0.87;
  playpawsY = displayHeight*0.14;
  playpawsD = displayHeight*1/16;
  forwardX = playpawsX + musicbackX*1.2/3;
  forwardY = playpawsY;
  backX = playpawsX - musicbackX*1/3;
  backY = playpawsY;
  skipW = displayWidth*1/32;
  skipH = displayHeight*1/15;
  loopX = playpawsX +  musicbackX*2.3/3;
  loopY = playpawsY;
  muteX = playpawsX -  musicbackX*2.2/3;
  muteY = playpawsY;
  //
  templateX1=displayWidth*0.2;
  templateY1= backgroundRedY;
  templateWidth1=displayWidth*2/20;
  templateHeight1=displayHeight*2/20;
  templateX2=displayWidth*0.3;
  templateY2=displayHeight*0.05;
  templateWidth2=displayWidth*2/20;
  templateHeight2=displayHeight*2/20;
  templateX3=templateX2;
  templateY3=displayHeight*0.152;
  templateWidth3=displayWidth*2/20;
  templateHeight3=displayHeight*0.096;
  templateX4=templateX1;
  templateY4=displayHeight*0.1518;
  templateWidth4=displayWidth*2/20;
  templateHeight4=displayHeight*0.096;
  template1 = loadImage("Images/space.jpg");
  template2 = loadImage("Images/adventure.jpg");
  template3 = loadImage("Images/mushroom.jpg");
  template4 = loadImage("Images/gravity.jpg");
 
}
