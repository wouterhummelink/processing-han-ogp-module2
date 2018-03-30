class Damsteen {
  int x, y, diameter;
  color kleur;
  boolean isGeselecteerd;

  // constants
  static final color WIT = #FFFFFF;
  static final color ZWART = #000000;

  // constructor
  Damsteen(int x, int y, int diameter, color kleur) {
    this.x = x; 
    this.y = y;
    this.diameter = diameter;
    this.kleur = kleur;
    this.isGeselecteerd = false;
  }
  
  String toString() {
    String deKleur;
    if(kleur == Damsteen.WIT) {
      deKleur = "wit";
    } else {
      deKleur = "zwart";
    }
    return deKleur;
  }

  void tekenDamsteen() {
    if (kleur == Damsteen.WIT) {
      stroke(Damsteen.ZWART);
    } else {
      stroke(Damsteen.WIT);
    }
    if (isGeselecteerd) {
      strokeWeight(2);
    } else {
      strokeWeight(1);
    }
    fill(this.kleur);
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
}

class Dambord {
  Damsteen[] stenen;

  Dambord() {
    stenen = new Damsteen[4];
    stenen[0] = new Damsteen(100, 100, 40, Damsteen.WIT);
    stenen[0].isGeselecteerd = true;
    stenen[1] = new Damsteen(180, 140, 40, Damsteen.ZWART);
    stenen[2] = new Damsteen(60, 60, 40, Damsteen.WIT);
    stenen[3] = new Damsteen(260, 180, 40, Damsteen.ZWART);
  }

  void tekenDamstenen() {
    for (int i = 0; i<stenen.length; i++) {
      stenen[i].tekenDamsteen();
    }
  }
}

Dambord dambord ;

void setup() {
  size(480, 480);
  dambord = new Dambord();
}

void draw() {
  dambord.tekenDamstenen();  
}

void tekenDamsteen(Damsteen s) {
  fill(s.kleur);
  ellipse(s.x, s.y, s.diameter, s.diameter);
}
