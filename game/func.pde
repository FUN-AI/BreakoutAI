
// add block
void addBlock() {
  for (int i = 0; i < MaxBlockNum; i++) {
    // no used block
    if (Block[i][0] == 0) {
      // determine the position (try 99999 overlap check)
      boolean flg = false;
      int x = 0, y = 0;
      for (int j = 0; j < 9999; j++) {
        x = 32 + rnd(476);
        y = 32 + rnd(256);
        if (checkBlock(x, y) == false) {
          flg = true;
          break;
        }
      }
      // use
      if (flg) {
        Block[i][0] = 1;
        Block[i][1] = x;
        Block[i][2] = y;
      }
    }
  }
}

// overlap check
boolean checkBlock(int p1, int p2) {
  boolean b = false;
  for (int i = 0; i < MaxBlockNum; i++) {
  }

  return b;
}