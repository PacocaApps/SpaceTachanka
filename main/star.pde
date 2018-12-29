class Star{
  float x;
  float y;
  float size;
  float speed;
  float cr;
  float cb;
  float cg;
  int starClass;//0 O(blue) 1 F(Blue to white) 2 G(White to Yellow) 3 k(oRANGE tO rED) 4 M(rED nIGGAS)
  public Star(){
    this.x = random(width);
    this.y = random(height);
    this.size = random(0,6);
    this.starClass = floor(random(0,4));
    
    if(this.starClass == 0){
      this.cr = 150;
    this.cg = 210;
    this.cb = 255;
      
      
    }else if(this.starClass == 1){
            this.cr = 255;
    this.cg = 255;
    this.cb = 255;
      
      
      
    }
    else if(this.starClass == 2){
            this.cr = 255;
    this.cg = 255;
    this.cb = 255;
      
      
      
    }
     else if(this.starClass == 3){
            this.cr = 254;
    this.cg = 219;
    this.cb = 132;
      
      
      
    }
     else if(this.starClass == 4){
            this.cr = 255;
    this.cg = 50;
    this.cb = 50;
      
      
      
    }
    
    
  }
  
  void display(){
    if(page == 0){
    this.speed = this.size/10;
    this.x = this.x + this.speed;
    }else if(page == 1){
        this.speed = this.size/7;
    this.x = this.x - this.speed;
      
    }
    fill(this.cr,this.cg,this.cb);
    noStroke();
    ellipse(this.x,this.y,this.size,this.size);
    
    
  }
  
  
}
