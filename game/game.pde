
// 設定
final int MaxBlockNum = 12;  // 最大ブロック数
final int MaxTime = 30*30;   // 残り時間（最大）

// 初期化
ArrayList<Block> objBlock;
ArrayList<Ball> objBall;

// 変数
int GameFlg = 0;   //ゲームの状態
int GameTime = 0;  // 残り時間

// 初期化
void setup() 
{
  size(540, 960);
  background(0);
  frameRate(30);

  // ブロックの発生
  objBlock = new ArrayList<Block>();
  SetNewBlock(MaxBlockNum);

  // ボールの発生
  objBall = new ArrayList<Ball>();
  objBall.add(new Ball(width/2, height/2, 60, 5));
}

// メイン
void draw()
{
  // 背景
  background(0);

  // ボールの処理
  for (int i = 0; i < objBall.size(); i++)
  {
    objBall.get(i).update();
    objBall.get(i).display();
  }

  // バーの処理
  Player();

  // ブロックの描画、処理
  for (int i = 0; i < objBlock.size(); i++)
  {
    objBlock.get(i).update();
    objBlock.get(i).display();
  }
}