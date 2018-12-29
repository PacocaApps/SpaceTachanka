


  int Score = 0;
Player tachanka = new Player();





void DrawGame(){
   
  
       for(int i =0;i < stars.length;i++){
 stars[i].display();
 if(stars[i].x < 0){
  stars[i].x = width; 
 }
 
}
  
    tachanka.display();
    
    
    
    
      if(mousePressed == true && mouseX < width/2 ) { tachanka.speed = -5; }else if(mousePressed == true && mouseX > width/2){ 
    
          bullets.add(new Bullet(tachanka.x,tachanka.y,tachanka.bulletS));
          tachanka.bulletS += 1;
          
        }
    
    
    
    
    
    
   
   
    
    for(int i = 0;i < enemys.length;i++){
      enemys[i].display();
      
      if(enemys[i].x < 0){
       enemys[i].x = width; 
        enemys[i].y = random(height); 
        
      }
      
      
   if(tachanka.collision(enemys[i])){
     page = 2;
     
   }
   
   
   
    }
  
  
  
  
  for(int j = 0;j < bullets.size(); j++){
    
    bullets.get(j).display();
    
    
    
    if(bullets.get(j).x > width){
      bullets.remove(j);
      tachanka.bulletS -= 1;
      
    }
    
    
    for(int i = 0;i < enemys.length;i++){
    if(bullets.get(j).collision(enemys[i])){
      
       bullets.remove(j);
       enemys[i].x = width;
       enemys[i].y = random(height);
      
    }
    }
  }
   

  
  
}
