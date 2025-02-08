void setup() {
  size(400, 400);
}

void draw() {
  sierpinski(100, 300, 200);
}

void sierpinski(int x, int y, int len) {
  if (len <= 20) { 
    triangle(x, y, x+len, y, x+len/2, y-len);
  } 
  else {
    int newLen = len / 2;
    sierpinski(x, y, newLen); 
    sierpinski(x + newLen, y, newLen); 
    sierpinski(x + newLen/2, y-newLen, newLen);
  }
}

