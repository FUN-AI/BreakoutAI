// ブロックの構造体
class Block
{
  // 変数
  int x, y;  // 座標
  int time;  //発生からの時間

  // コンストラクタ
  Block(int _x, int _y) 
  {
    x = _x;
    y = _y;
    time = -30*5;
  }

  // デストラクタ

  // 描画
  void display() 
  {
    colorMode(HSB, 100);
    fill(time/3, 100, 100);
    colorMode(RGB, 255);
    stroke(255);
    if (time > 0)
    {
      rect(x-20, y-20, 40, 40);
    } else {
      int ang = 90 - time;
      pushMatrix();
      translate(random(width), random(height));
      rotate(random(PI/2));
      rect(0, 0, 40, 40);
      popMatrix();
    }
  }

  // 更新
  void update() 
  {
    time = time + 1;
  }
}

// 新しいブロックをn個発生させる
void SetNewBlock(int p1)
{
  // 繰り返す
  for (int i = 0; i < p1; i++)
  {
    // 発生座標
    int x = 50+rnd(440);//int(random(50, 540-50));
    int y = 50+rnd(270);//int(random(50, 320));

    objBlock.add(new Block(x, y));
  }
}