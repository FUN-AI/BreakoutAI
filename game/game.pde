
// fixed variable
final int MaxBlockNum = 24;
final int SizeBlock = 32;

// variable
float BallX, BallY, BallAng, BallSpeed;  // ball info
int[][] Block = new int[MaxBlockNum][3]; // block info
int BarX;                                // bar info

void setup() {
  size(540, 960);

  // Game Initialize
  BallX = 270;
  BallY = 480;
  BallAng = 120;
  BallSpeed = 4.5;
  
  // add block
  for(int i = 0;i < MaxBlockNum;i++) addBlock();
}

void draw() {
  // update ball
  
  // update bar
  
  // draw background
  background(0);
  
  // draw block
  
  // draw bar
  
  // draw ball
}