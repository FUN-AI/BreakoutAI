// ランダムシード値
int RndTable = int(random(9999));

// ランダム関数内部用
int _rnd(int seed) {

  seed = abs(seed);
  seed = seed + 13;
  seed = (seed) * int(sqrt(seed));
  seed = ~ seed + 7;

  return abs(seed);
}

// ランダム関数
int rnd(int p1) {
  int c = 0;
  if (p1%2==0) {
    while (c == 0) {
      RndTable = _rnd(RndTable);
      c = RndTable%(p1+1);
    }
    c = c - 1;
  } else {
    RndTable = _rnd(RndTable);
    c = RndTable%p1;
  }
  return c;
}