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
         colony[i].walk();
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
  myX=myX+(int)(Math.random()*9)-5;
  myY=myY+(int)(Math.random()*9)-5;
 if(myX>600)
 {
 myX=0;
 }
 if(myX<0)
 {
 myX=600;
 }
 if(myY>700)
 {
 myY=0;
 }
 if(myY<0)
 {
 myY=700;
 }
 }   
     void show()
{
   fill(250,165,0);
    ellipse(myX,myY,10,10);
    }
}    
