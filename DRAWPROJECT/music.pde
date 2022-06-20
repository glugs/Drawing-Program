 color  white=#FFFFFF, gray=#CBCBCB,
grey=#868686;
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
void musicdraw () {
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
    fill (#CECECE);
    stroke(reset);
    image(listen, musicX, musicY, musicWidth, musicHeight);

  }
  
  
  if (musicBON == true) {
  noStroke();
 // rect( musicbackX, musicbackY, musicbackW, musicbackH);
  
   image(rad, displayWidth*0.76, displayHeight*0.08, displayWidth/4, displayHeight/6);

  image(loop, loopX, loopY, skipW, skipH);
  
  image(mute, muteX, muteY, skipW, skipH);
  
  image(play, playpawsX, playpawsY, playpawsD, playpawsD);
  
  image(next, forwardX, forwardY, skipW, skipH);
  
  image(previous, backX, backY, skipW, skipH);
  
    
 stroke(reset); }

 
 if (pauseON == true) {
  noStroke(); 
  fill(#CECECE);
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
void musicplayer () {
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

void playpauseB() {
  
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

void fastforward() {
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

void rback () {
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


void mute() {
if (mouseX>muteX && mouseX<muteX+skipW && mouseY>muteY && mouseY<muteY+skipH) {
    if ( song[currentSong].isPlaying() ) {
  song[currentSong].pause();
  song[currentSong].rewind();
  } else {
  song[currentSong].play();
  
  }
  
}
}

void loop() {
  if (mouseX>loopX && mouseX<loopX+skipW && mouseY>loopY && mouseY<loopY+skipH) {

    
    String keystr = String.valueOf(key);
  int num = int (keystr);
  if ( num > 1 && num < 4 )
  
    song[currentSong].loop(num);
    loopCount = num;
    
    
  }
}
  void arrayFixError() {
  if ( currentSong == numberOfSongs - 1 ) {
    currentSong= numberOfSongs - numberOfSongs;
  } else {
    currentSong ++;
  }
}

void arrayFixError2() {
  if ( currentSong == numberOfSongs - numberOfSongs ) {
    currentSong= numberOfSongs - 1;
  } else {
    currentSong --;
  }
}
