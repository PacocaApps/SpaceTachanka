class Bullet{
  float x;
  float y;
  float index;
 public Bullet(float x,float y,int index){
   
   this.x = 100;
   this.y = y;
   this.index = index;
   
 }
  void display(){
    
    
    fill(0,255,0);
    this.x = this.x + 10;
    
    rect(this.x,this.y,40,40);
    
  }
  
   boolean collision(Enemy enemy){
if(enemy.x + enemy.sx > this.x && enemy.x < this.x){
if(enemy.y + enemy.sy > this.y  && enemy.y < this.y){
  
 bullets.remove(this.index);
  
  System.out.println("GetShot");
  return true;
}
  
  
}
return false;
}
  
  
}
