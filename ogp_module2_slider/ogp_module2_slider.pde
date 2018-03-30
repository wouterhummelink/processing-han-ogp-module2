float s1X, s1Y, s1Breedte, s1Hoogte;
int s1NPosities;
Slider slider;

void setup() {
  size(300, 200);
  background(0);

  s1Breedte = 200;
  slider = new Slider((width - s1Breedte)/2,50,s1Breedte, 50, 5);
  println(slider);
  
  
  
}

void draw() {
    
    slider.tekenSlider();
}
