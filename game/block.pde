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
    time = -30*2;
  }

  // デストラクタ

  // 描画
  void display() 
  {
    fill(0, 0, 0, 0);
    stroke(255);
    if (time > 0)
    {
      rect(x-20, y-20, 40, 40);
    } else {
      int ang = 90 - time*12;
      int size = (time+60)*40/60;
      pushMatrix();
      translate(x, y);
      rotate(radians(ang));
      rect(-size/2, -size/2, size, size);
      popMatrix();

      pushMatrix();
      translate(x, y);
      rotate(radians(-ang));
      rect(-size/2, -size/2, size, size);
      popMatrix();
    }
  }

  // 更新
  void update() 
  {
    time = time + 1;
  }

  // ボールとの当たり判定
  boolean checkHit(float cx, float cy)
  {
    boolean b = false;

    if (abs(cx - x) < 30 && abs(cy - y) < 30)
    {
      b = true;
    }

    return b;
  }
}

// 新しいブロックをn個発生させる
void SetNewBlock(int p1)
{
  // 繰り返す
  for (int i = 0; i < p1; i++)
  {
    boolean b = true;
    int x = 0, y = 0;
    while (b)
    {
      // 発生座標
      x = 50+rnd(440);//int(random(50, 540-50));
      y = 50+rnd(270);//int(random(50, 320));
      // 重なるブロックがあるか？
      b = checkBlock(x, y);
    }
    objBlock.add(new Block(x, y));
  }
}

// ブロック同士がぶつからないかチェックする関数
boolean checkBlock(int x, int y) 
{
  boolean b = false;

  for (int i = 0; i < objBlock.size(); i++)
  {
    int nx = objBlock.get(i).x;
    int ny = objBlock.get(i).y;
    if (abs(x - nx) < 50 && abs(y - ny) < 50)
    {
      b = true;
      break;
    }
  }

  return b;
}