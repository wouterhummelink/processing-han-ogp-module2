class Slider {
  // attributes
  float x, y, breedte, hoogte;
  int nPosities, positie;
  Slider(float x, float y, float breedte, float hoogte, int nPosities) {
    this.x = x;
    this.y = y;
    this.breedte = breedte;
    this.hoogte = hoogte;
    this.nPosities = nPosities;
    this.positie =1;
  }

  String toString() {
    return "{X: "+x+" Y: "+y+" B: "+breedte+" H: "+hoogte+" N: "+nPosities+"}";
  }

  
  
  void tekenSlider() {
    this.positie = bepaalSliderPositie();
    float blokjeBreedte = breedte / nPosities;

    noStroke();
    fill(255);
    rect(x, y, breedte, hoogte);

    fill(#2257F0);
    rect(x + positie * blokjeBreedte, y, blokjeBreedte, hoogte);
  }

  int bepaalSliderPositie() {
    float blokjeBreedte = breedte / nPosities;

    if (mouseX < x) {
      return 0;
    } else if (mouseX >= breedte + x) {
      return nPosities - 1;
    } else {
      return floor((mouseX - x) / blokjeBreedte);
    }
  }
}
