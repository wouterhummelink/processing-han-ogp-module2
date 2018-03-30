class Student {
  int studentnummer;
  String voornaam, achternaam;
  
  Student(int studentnummer, String voornaam, String achternaam) {
    this.studentnummer = studentnummer;
    this.voornaam = voornaam;
    this.achternaam = achternaam;
  }
  
  String toString() {
    return String.format("{N: %d, V: %s, N: %s", studentnummer, voornaam, achternaam);
  }
}

public void setup() {
  Student student = new Student(12345, "Wouter", "Hummelink");
  print(student);
}
