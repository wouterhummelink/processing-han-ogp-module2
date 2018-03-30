Klok deKlok;

void setup() {
  size(400,400);
  deKlok = new Klok(150, 100, 200, 23, 15);
  deKlok.tekenKlok();
}

void draw() {
  deKlok.tik();
  deKlok.tekenKlok();
}
