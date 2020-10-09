void setup()
{
  size(700, 700);
  background(255);
  textAlign(CENTER, CENTER);
  noLoop();
  noStroke();
}
void draw()
{
  int total = 0;
  for (int y = 0; y < 650; y = y + 50){
    for (int x = 0; x < 700; x = x + 50){
    Die one = new Die(x, y);
    one.show();
    total = total + one.rollValue;
    rect(315, 670, 80, 15);
    fill(0);
    text("TOTAL: " + total, 350, 675);
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int rollValue, myX, myY;
  
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    rollValue = (int)(Math.random()*6)+1;
  }
  void show()
  {
    // die
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect(myX, myY, 50, 50);
    
    //dots
    if (rollValue == 1){
      fill(255);
      ellipse(myX + 25, myY + 25, 10, 10);
      }
    else if (rollValue == 2){
      fill(255);
      ellipse(myX + 25, myY + 15, 10, 10);
      ellipse(myX + 25, myY + 35, 10, 10);
      }
    else if (rollValue == 3){
      fill(255);
      ellipse(myX + 25, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 25, myY + 40, 10, 10);
      }
    else if (rollValue == 4){
      fill(255);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      }
    else if (rollValue == 5){
      fill(255);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      }
    else{
      fill(255);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      }
  }
}
