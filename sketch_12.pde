class Krug { 
float r, y, s, x; 
Krug (float _x, float _y, float _s, float _r){ 
this.x = _x; 
this.y = _y; 
this.s = _s; 
this.r = _r; 
fill(random(255),random(255),random(255)); 
} 

void draw() { 
ellipse(this.x,this.y,this.r,this.r); 
} 

void right(float _s) { 
this.x+=_s; 
} 
} 

Krug[] k_array; 

void setup() 
{ 
size(800,600); 
background(random(255),random(255),random(255)); 
k_array = new Krug[150]; 
for(int i=0; i<150; i++){ 
k_array[i] = new Krug(random(width),random(height), 10, 10); 
} 
} 

void draw() 
{ 
for(int i=0; i<150; i++){ 
k_array[i].draw(); 
k_array[i].right((mouseX-mouseY)/200); 
} 
}