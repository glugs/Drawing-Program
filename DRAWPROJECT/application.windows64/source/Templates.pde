//Global Variables
float templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight;
String templateText = "TEMPLATES";
float templateX1, templateY1, templateWidth1, templateHeight1, templateX2, templateY2, templateWidth2, templateHeight2, templateX3, templateY3, templateWidth3, templateHeight3, templateX4, templateY4, templateWidth4, templateHeight4;
PImage template1, template2, template3, template4;
color sky=#E3FAF8;
//
void buttomTemplateDraw() {
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
  textFont(font, displayWidth/80);
  text(templateText, templateButtonX, templateButtonY, templateButtonWidth, templateButtonHeight);
  fill(resetWhite);
}
//
void buttonTemplatemousePressed() {
  if (mouseX>=templateButtonX && mouseX<=templateButtonX+templateButtonWidth && mouseY>=templateButtonY && mouseY<=templateButtonY+templateButtonHeight) {
    if (templatedrop==false) {
      templatedrop=true;
    } else {
      templatedrop=false;
    }
  }
}

//
void TemplateDraw() {
 
  
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
void TemplatemousePressed() {
  
  
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
