class Kaartje {
  Film film;
  
  Kaartje(Film film) {
    this.film = film;
  }
  
  String toString() {
    return "Kaartje voor "+film.naam;
  }
}
