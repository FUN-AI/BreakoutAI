// プレイヤーの制御用
void Player() 
{
}

// ボールの構造体
class Ball {
  // 変数
  float x, y;
  float angle, speed;

  // コンストラクタ
  Ball(float _x, float _y, float _angle, float _speed) {
    x = _x;
    y = _y;
    angle = _angle;
    speed = _speed;
  }

  // 描画
  void display()
  {
    fill(0, 0, 0, 0);
    ellipse(x, y, 20, 20);
  }

  // 処理
  void update()
  {
    // 移動
    float by = y;
    x = x + sin(radians(angle))*speed;
    y = y + cos(radians(angle))*speed;

    // 新しいブロックの生成
    if (by < 350 && y >= 350) SetNewBlock(MaxBlockNum - objBlock.size());

    // 壁との当たり判定
    if (x < 10 || x > width-10) angle = 360 - angle;
    if (y < 10 || y > height-10) angle = 180 - angle;

    // ブロックとの当たり判定
    for (int i = 0; i < objBlock.size(); i++)
    {
      boolean b = objBlock.get(i).checkHit(x, y);
      if (b) {
        int gx = objBlock.get(i).x;
        int gy = objBlock.get(i).y;
        if (abs(gx-x) == abs(gy-y)) {  // 角に当たった
          angle = 180 - angle;
          angle = 360 - angle;
        } else if (abs(gx-x) < abs(gy-y)) { // 上か下に当たった
          angle = 180 - angle;
        } else {  // 右か左に当たった
          angle = 360 - angle;
        }
        // 当たった対象を消す
        objBlock.remove(i);
      }
    }
  }
}