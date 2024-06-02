PImage board;

void setup(){
  size(1750, 1000);
  board = loadImage("monopoly.png");
  board.resize(1000, 1000);
}
void draw(){
  image(board, 0, 0);
}
