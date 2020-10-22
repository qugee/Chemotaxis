 bacterias[] colony; //declare bacteria variables here    
 void setup()    
 {           
    size(600,700);
    colony = new bacterias[10];   
    for(int i=0;i<colony.length;i++)
    {
      colony[i]= new bacterias();  
    }
     }    
     void draw()    
     {                     
     background(0,100,225);
     for(int i=0;i<colony.length;i++){
         colony[i].move();
         colony[i].show();
         }
         //move and show the bacteria    
         }   
         class bacterias   
{              
    int myX, myY;
    bacterias()
    {
        myX = myY = 300;
    }
    void walk()
 { 
  if (mouseX>myX)
  {
 myX=myX+(int)(Math.random()*5)-3;
  }
 else
 {
 myX=myX+(int)(Math.random()*5)-1;
 }
 if (mouseY>myY)
 {
 myY=myY+(int)(Math.random()*5)-3;
 }
 else
 {
 myY=myY+(int)(Math.random()*5)-1;
 }
 }   
     void show()
{
   fill(250,165,0);
    ellipse(myX,myY,10,10);
    }
}    
