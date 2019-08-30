/*
  Created by: Rasmus Lauridsen, 2.I
  Date: 28-08-2019

  Use LEFT MOUSE to draw red boxes
  Use RIGHT MOUSE to "delete" boxes (they are actually just painted black)
*/


int xPos, yPos;
int boxSize = 50;


void setup() {
  // Size of window and black background
  size(800, 800);
  background(0);
}


void draw() { 
  
  // If any mouse button is pressed, then create the square
  if (mousePressed) {
    xPos = mouseX - (mouseX % boxSize);   // Get the x position of the square by substracting modulo of mouse position by the box size
    yPos = mouseY - (mouseY % boxSize);   // Same as above, with y position
   
    
    // Determine the color. If left mouse, then red, else black
    fill(0);
    if (mouseButton == LEFT) { fill(255, 0, 0); }
    square(xPos +1, yPos +1, boxSize -2);   // Create the box. Substract 1 from x and y to make the padding
  }
}
