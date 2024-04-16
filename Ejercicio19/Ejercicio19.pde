float yPos; 
float velocidad = 2; 
boolean moviendoAbajo = true; 


float AnchoElipse = 80;
float AltoElipse = 80;

void setup() {
    size(400, 200);
   
    yPos = 0;
}

void draw() {
    background(0);


    stroke(255);

  
    if (moviendoAbajo) {
        line(0, yPos, width, yPos); 
        fill(255); 
        ellipse(width / 2, yPos + 40, AnchoElipse, AltoElipse); 
    } else {
        fill(255); 
        ellipse(width / 2, yPos - 40, AnchoElipse, AltoElipse);
        line(0, yPos, width, yPos);
    }

    
    if (moviendoAbajo) {
        yPos += velocidad; 
        if (yPos >= height) {
            
            moviendoAbajo = false;
        }
    } else {
        yPos -= velocidad; 
        if (yPos <= 0) {
      
            moviendoAbajo = true;
        }
    }
}
