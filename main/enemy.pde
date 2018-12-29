class Enemy{
  float x;
  float y;
  float sx;
  float sy;
  float speed;
  public Enemy(){
    this.x = width;
    this.y = random(0,height);
    this.sx = 50;
    this.sy = 50;
    this.speed = random(4,10);
  }
  
  void display(){
    this.x = this.x -this.speed;
    fill(255,0,0);
    rect(this.x,this.y,this.sx,this.sy);
    
  }
  
  
  
  
}
