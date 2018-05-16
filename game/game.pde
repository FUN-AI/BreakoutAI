
// 設定
final int MaxBlockNum = 12;  // 最大ブロック数
final int MaxTime = 30*30;   // 残り時間（最大）

// ランダムシード値
final String RndTable = "0000";
int RndCount = 0;

// 初期化
ArrayList<Block> objBlock;

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
}

// メイン
void draw()
{
  // 背景
  background(0);

  // ボールの処理

  // バーの処理

  // ブロックの描画、処理
  for(int i = 0;i < objBlock.size(); i++)
  {
    objBlock.get(i).update();
    objBlock.get(i).display();
  }

}