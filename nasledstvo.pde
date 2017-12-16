
class  Dvigatysa {
  float  y,  x;
  Dvigatysa (float x, float y ){ 
    this.x = x;
    this.y = y;
  }
}
  
  class Krug extends Dvigatysa {
    float r1,r2;
    Krug (float x, float y, float r1, float r2){
      super(x, y );
      this.r1= r1;
      this.r2= r2;
      fill(random(255),random(255),random(255));
    }
    
    void draw() {
      ellipse( this.x, this.y, this.r1, this.r2);
    }
    
  void right(float r1) {
    this.x+=r1;
  }
}

Krug[] k_array;

void setup()
{
  size(800,600);
   background(random(255),random(255),random(255));
  k_array = new Krug[150];
  for(int i=0; i<150; i++){
    k_array[i] = new Krug(random(width),random(height), 30, 20);
  }
}

void draw()
{
  for(int i=0; i<50; i++){
     k_array[i].draw();
     k_array[i].right((mouseX-mouseY)/200);
  }
}