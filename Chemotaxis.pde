Bacteria[] haha; 

 void setup()   
 {     
   size(500, 500);
  haha = new Bacteria [300];
 for(int i = 0; i < haha.length; i++)
 {
  int R = (int) (Math.random() * 256);
  int G = (int) (Math.random() * 256);
  int B = (int) (Math.random() * 256);
  haha[i] = new Bacteria(R, G, B);
 } 
    
 }   
 void draw()   
 {    
   
         
 background(255);
 
    fill(0);
 textSize(50);
 text("Black Friday",100, 50);

      fill(102, 51, 0);
      rect(150, 100, 200, 50);
 
   for (int j = 200; j <= 400; j+=100){
     for (int k = 75; k <= 450; k+=150){
         
         fill(102, 51, 0);
         rect(k, j, 50, 50);
         
 for(int i = 0; i < haha.length; i++)
 {

   haha[i].show();
   haha[i].walk();
 }
 
 fill(255);
 rect(mouseX, mouseY, 100, 40);
 fill(255, 0, 0);
 textSize(35);
 text("SALE!", mouseX + 5, mouseY + 35);
 

        
  
     }

 
 }
 }
 

 class Bacteria    
 {     
   int myX, myY, R, G, B, random;
  
 
 Bacteria(int r, int g, int b)
 {
   myX = myY = 250;
   R = r;
   G = g;
   B = b;
   

 }
 void walk(){
 
 if ((mouseX + 50) > myX)
   myX = myX + (int)(Math.random() * 4) - 1;
   else
   myX = myX + (int)(Math.random() * 4) - 3;
   
    if (mouseY > myY)
   myY = myY + (int)(Math.random() * 4) - 1;
   else
   myY = myY + (int)(Math.random() * 4) - 3;
    
    
 }
 void show(){
   fill(R, G, B);
   ellipse(myX, myY, 30, 30);
   
   

 }  
 }
