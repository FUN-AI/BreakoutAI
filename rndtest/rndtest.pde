int test = 32;
int TestNum = 10000;

int RndTable = 0;
int Count[] = new int[test];

int rnd(int seed) {  // 偶数がダメ

  seed = abs(seed);
  seed = seed + 13;
  seed = (seed) * int(sqrt(seed));
  seed = ~ seed + 7;

  return abs(seed);
}

void setup() {
  for (int i = 0; i < TestNum; i++) {
    int c = 0;
    if (test%2==0) {
      while (c == 0) {
        RndTable = rnd(RndTable);
        c = RndTable%(test+1);
      }
      c = c - 1;
    } else {
      RndTable = rnd(RndTable);
      c = RndTable%test;
    }
    Count[c] = Count[c] + 1;
    println(c, RndTable);
  }
  println("-----------------");
  for (int i = 0; i < test; i++) {
    println("["+i+"]\t"+(Count[i]*100/TestNum)+"%\t"+Count[i]);
  }
}