



class Player{
  float x = -100;
  float y = height/2;
  float sx = 416;//832;
  float sy = 494;//988;
  float speed;
  float ac;
  int bulletS;
  public Player(){
    this.x = x;
    this.y = y;
    this.sx = sx;
     this.sy = sy;
    this.speed = 0;
    this.ac = 0.1;
    this.bulletS = 0;
  }
  
  void display(){
    this.y = this.y + this.speed;
    this.speed = this.speed + this.ac;
    image(tacha,this.x,this.y,this.sx,this.sy);
  
    
  }
 
 boolean collision(Enemy enemy){
if(enemy.x < this.x + this.sx - 150 && enemy.x > this.x){
if(enemy.y < this.y + this.sy && enemy.y > this.y){
  System.out.println("djj");
  return true;
}
  
  
}
return false;
}
  
  
}
