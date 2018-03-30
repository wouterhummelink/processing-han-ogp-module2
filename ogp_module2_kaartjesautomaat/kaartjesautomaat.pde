class Kaartjesautomaat {
  float ingeworpen;
  Film film;
  float totaalIngeworpen;
  boolean kaartjeGeprint;
  
  Kaartjesautomaat(String naam, float prijs) {
    this.film = new Film(naam, prijs);
    this.ingeworpen = 0;
    this.totaalIngeworpen = 0;
  }
  
  boolean inwerpen(float bedrag) {
    if (bedrag > 0 && kaartjeGeprint == false) {
      ingeworpen += bedrag;
      return true;
    } else {
      return false;
    }
  }
  
  float legen() {
    return totaalIngeworpen;
  }
  
  Kaartje printKaartje() {
    if (ingeworpen > film.prijs) {
      kaartjeGeprint = true;
      return new Kaartje(film);
    }
    println("Onvoldoende geld ingeworpen");
    return null;
  }
  
  float geefWisselgeld() {
    if(kaartjeGeprint) {
      totaalIngeworpen += film.prijs;
      kaartjeGeprint = false;
      return ingeworpen - film.prijs;
    } else {
      return 0;
    }
  }
}
