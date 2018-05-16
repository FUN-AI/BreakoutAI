int RndTable = 4182;
int Count[] = new int[10];
int TestNum = 10000;

int rnd(int seed) {  // 4,5,7,8が少ない...

  seed = seed + 13;
  seed = seed * seed;
  seed = seed + 7;
  seed = ~ seed;

  return abs(seed);
}

void setup() {
  for (int i = 0; i < TestNum; i++) {
    RndTable = rnd(RndTable);
    Count[RndTable%10] = Count[RndTable%10] + 1;
    println(RndTable%10, RndTable);
  }
  println("-----------------");
  for (int i = 0; i < 10; i++) {
    println("["+i+"]\t"+(Count[i]*100/TestNum)+"%\t"+Count[i]);
  }
}