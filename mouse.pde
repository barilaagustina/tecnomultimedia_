void mousePressed() {
  float d1=dist(mouseX, mouseY, 430, 450);
  int r1 = 50/2;
  if (d1<r1) {
    estado=1;
  }
}
