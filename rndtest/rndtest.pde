int test = 9;
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
    RndTable = rnd(RndTable);
    int c = RndTable%test;
    Count[c] = Count[c] + 1;
    println(RndTable%test, RndTable);
  }
  println("-----------------");
  for (int i = 0; i < test; i++) {
    println("["+i+"]\t"+(Count[i]*100/TestNum)+"%\t"+Count[i]);
  }
}