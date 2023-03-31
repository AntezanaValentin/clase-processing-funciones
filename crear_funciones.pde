
int mx;
int my;
int m = 1;
boolean permitido = true;

void setup() {
  size(800, 800);
  background(255);
  rectMode(CENTER);
}



void coordenadas() {
  if (mousePressed) {
    mx = mouseX;
    my = mouseY;
  }
}

void circulos(float x, float y, float r, int cant) {
  float resta = r/cant;
  for (int i = 0; i < cant; i++) {
    noFill();
    circle(x, y, r);
    r -= resta;
  }
}

void rectangulos(float x, float y, float w, float h, int cant) {
  float dw = w/cant;
  float dh = h/cant;
  for (int i = 0; i < cant; i++) {
    noFill();
    rect(x, y , w, h);
    //x += dw/2;
    //y += dh/2;
    w -= dw;
    h -= dh;
  }
}



void draw() {
  /*  if (mousePressed && permitido == true) {
   coordenadas();
   r = 100;
   m = 1;
   permitido = false;
   }
   //if (r <= 100) {
   r -= m;
   circle(mx, my, r);
   //}
   if (r <= 0) {
   m *= 0;
   permitido = true;
   }*/
  /*float r = random(150, 450);
   float resta = r/15;
   if (mousePressed) {
   r = random(150, 450);
   for (int i = 0; i < 15; i++) {
   noFill();
   circle(mouseX, mouseY, r);
   r -= resta;
   println(r);
   }
   }*/


  if (mousePressed) {
    rectangulos(mouseX, mouseY, 150, 150, 3);
  }
  /*if(mousePressed) {
    circulos(mouseX,mouseY,100,10);
  }*/
}
