public class Button{
  String buttonText;
  float buttonX, buttonY, buttonWidth, buttonHeight;
  color buttonColor;
  boolean isClicked = false;
  
  public Button(String t, float x, float y, float width, float height, int r,  int g, int b){
    buttonText = t;
    buttonX = x;
    buttonY = y;
    buttonWidth = width;
    buttonHeight = height;
    buttonColor = color(r, g, b);
  }
  
  public void makeButton(){
    fill(buttonColor);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(0);
    textAlign(CENTER,CENTER);
    text(buttonText, buttonX + buttonWidth/2, buttonY + buttonHeight/2);
  }
  
  public void click(){
    if(mousePressed == true && mouseButton == LEFT && (mouseX >= buttonX && mouseX <= buttonX + buttonWidth) && (mouseY >= buttonY && mouseY <= buttonY + buttonHeight)){
      isClicked = true;
    }
  }
  
  public boolean isClicked(){
    return isClicked;
  }
}
