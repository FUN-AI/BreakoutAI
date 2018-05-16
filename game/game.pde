
// 設定
final int MaxBlockNum = 12;  // 最大ブロック数
final int MaxTime = 30*30;   // 残り時間（最大）

// 変数
int GameFlg = 0;  //ゲームの状態
int GameTime = 0;  // 残り時間

// 初期化
void setup() 
{
  size(540, 960);
  background(0);
  frameRate(30);

  // ブロックの発生
  SetNewBlock(MaxBlockNum);
}

// メイン
void draw()
{
}