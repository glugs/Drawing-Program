float ShapeButtonX, ShapeButtonY, ShapeButtonWidth, ShapeButtonHeight;
String ShapeText = "SHAPES";
float shapedropX, shapedropY, shapedropWidth, shapedropHeight;
float cirleX, circleY, circleWidth, circleHeight, squareX, squareY, squareWidth, squareHeight, triangleX, triangleY, triangleWidth, triangleHeight, lineX, lineY, lineWidth, lineHeight;
float shapeTX, shapeTY, shapeTWidth, shapeTHeight;
String  period=".";
color RedLowerButtonHO=#980F0B, RedLowerButton=#F20F07, GreenHigherButtonHO=#14890C, GreenHigherButton=#0FB704;
//
void BShapeDraw() {
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
void BShapemousePressed() {
  if (mouseX>=ShapeButtonX && mouseX<=ShapeButtonX+ShapeButtonWidth && mouseY>=ShapeButtonY && mouseY<=ShapeButtonY+ShapeButtonHeight) {
    if (shapesdrop==false) {shapesdrop=true;} else {shapesdrop=false;}
  }
}

//
void ShapeDraw() {
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
void ShapemousePressed() {

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
