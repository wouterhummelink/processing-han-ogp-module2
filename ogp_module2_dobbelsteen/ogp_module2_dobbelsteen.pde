class Dobbelsteen {
  int zijden;
  int laatsteworp;
  
  Dobbelsteen(int zijden) {
    this.zijden = zijden;
  }
  
  int werp() {
    int result = (int)(Math.ceil(Math.random()*zijden));
    this.laatsteworp = result;
    return result;
  }
  
  String toString() {
    return String.format("%d-zijdige dobbelsteen, laatste worp %d", zijden, laatsteworp);
  }
}

public void setup() {
  Dobbelsteen zeszijdig = new Dobbelsteen(6);
  int worp1 = zeszijdig.werp();
  assert(worp1 > 0 && worp1 <= 6);
  println(worp1);
  println(zeszijdig);
  
  Dobbelsteen twintigzijdig = new Dobbelsteen(20);
  int worp2 = twintigzijdig.werp();
  assert(worp1 > 0 && worp1 <= 20);
  
  println(worp2);
  println(twintigzijdig);
}
