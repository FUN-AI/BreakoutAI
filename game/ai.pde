/*
 x ... バーのx座標（中心）
 y ... バーのy座標（上　当たり判定のある部分）
 len ... バーの長さ
 dataBlock ... ブロックに関する情報がすべて入っている
 dataBall ... ボールに関する情報がすべて入っている
 dataBar ... 他のバーに関する情報（対称のバーも含む）がすべて入っている
 */

// バーの動きを制御するプログラム
int ControlBar(int x, int y, int len, ArrayList<Block> dataBlock, ArrayList<Ball> dataBall, ArrayList<Bar> dataBar)
{
  int n = 0;
  int count = 0;
  ArrayList<Block> default_dataBlock = new ArrayList(dataBlock);
  ArrayList<Ball> default_dataBall = new ArrayList(dataBall);
  ArrayList<Block> _dataBlock = new ArrayList(dataBlock);
  ArrayList<Ball> _dataBall = new ArrayList(dataBall);

  // 0番のボールの次のバーのy座標の時のx座標を求める
  while (_dataBall.get(0).y < y && count < 30*8)
  {
    for (int i = 0; i < _dataBall.size(); i++)
    {
      _dataBall.get(i).update(_dataBlock);
    }
    count = count + 1;
  }

  return n;
}