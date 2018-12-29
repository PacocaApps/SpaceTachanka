void drawMenu(){
  
     for(int i =0;i < stars.length;i++){
 stars[i].display();
 if(stars[i].x > width){
  stars[i].x = 0; 
 }
 
}
  fill(255);
   textSize(150);
   text("SPACE TACHANKA",width/2-620,height/2-200);
   
  
   fill(255);
   rect(width/2-450,height-height/3,width/3,height/4);
 fill(0);
   text("START",width/2-250,height-height/3+200);
  
   if (mousePressed == true) {
    if(mouseX > width/2-450 && mouseX < width/2-450 + width/2.5){
      if(mouseY > height-height/3 && mouseY < height-height/3 +height/4){
    page = 1;
      }
    }
  } 
  
}
