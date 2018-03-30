float[] inwerpen1 = {1.5, 3, 6, 5, 5};
float[] inwerpen2 = {-2, 0};

void setup() {
  Kaartjesautomaat automaat = new Kaartjesautomaat("The Mummy", 17.50);

  // Happy flow 
  for( int i = 0; i < inwerpen1.length; i++) {
    boolean succes = automaat.inwerpen(inwerpen1[i]);
    println(succes?("Inwerpen van "+inwerpen1[i]+" gelukt, ingeworpen: "+automaat.ingeworpen):"Inwerpen mislukt");
  }
  Kaartje k = automaat.printKaartje();
  if(k != null) {
    println(k);
    float wisselgeld = automaat.geefWisselgeld();
    println("Wisselgeld: "+wisselgeld);
  } else {
    println("Geen kaartje geprint");
  };
}
