
Enemy[] enemys;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Star[] stars;
int page = 0;
int or = 0; //0  = Portrait //  1 = Landscape
PImage tacha;
PImage Black;
void setup(){
    orientation(LANDSCAPE);  
    
    
   
    
    enemys = new Enemy[9];
 for(int i =0;i < enemys.length;i++){
 enemys[i] = new Enemy(); 
}

fullScreen();
tacha = loadImage("tachanka.png");

//Star Creating
stars = new Star[100];
for(int i =0;i < stars.length;i++){
 stars[i] = new Star(); 
}

}

void draw(){
 background(0);
 fill(255);
 textSize(72);
  text("x,y: "+width+"/"+height,60,100);
  //Main MENU Workings
  if(page == 0){
 drawMenu();
  }else if(page == 1){
    
    DrawGame();
  }
  else if(page == 2){
    
    EndGame();
  }
 
 
}
