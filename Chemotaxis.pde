 Bacteria [] colony; //declare bacteria variables here    
 void setup()    
 {           
    size(600,700);
    background(#00FFFF);
    colony = new Bacteria[10];   
    for(int i=0;i<colony.length;i++)
    {
      colony[i]= new Bacteria();  
    }
     }    
     void draw()    
     {             
         for(int i=0;i<colony.length;i++){
         colony[i].move();
         colony[i].show();
         }
         //move and show the bacteria    
         }   
         class Bacteria     
{              
    int x,y;
    Bacteria()
    {
        x=300;
        y=300;
    }
    void move()
 { 
 x=x+(int)(Math.random()*3)-1;
 y=y+(int)(Math.random()*3)-1;
 }   
     void show()
{
   fill(250,0,0);
    ellipse(x,y,10,10);
    }
}    
