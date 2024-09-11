PImage monstroImg;  
PImage naveImg;     

float naveX;
float naveY;
float naveLargura = 40;
float naveAltura = 20;
float naveAngulo = 0;  

float tiroX;
float tiroY;
boolean tiroAtivo = false;
float tiroVelocidade = 10; 

int numMonstros = 5;
float[] monstrosX = new float[numMonstros];
float[] monstrosY = new float[numMonstros];
float[] velocidadeMonstro = new float[numMonstros];  
boolean[] monstroVivo = new boolean[numMonstros];

void setup() {
  size(400, 400);
  naveX = width / 2 - naveLargura / 2;
  naveY = height - naveAltura - 10;

  naveImg = loadImage("C:/Users/ivand/Downloads/pngwing.com.png");
  monstroImg = loadImage("C:/Users/ivand/Downloads/images.png");

  for (int i = 0; i < monstrosX.length; i++) {
    monstrosX[i] = random(width - 30); 
    monstrosY[i] = random(-200, -50);   
    velocidadeMonstro[i] = random(2, 5); 
    monstroVivo[i] = true;
  }
}

void draw() {
  background(0);
  
  pushMatrix();
  translate(naveX + naveLargura / 2, naveY + naveAltura / 2);  
  rotate(radians(naveAngulo));
  imageMode(CENTER);
  image(naveImg, 0, 0, naveLargura, naveAltura); 
  popMatrix();
  
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      naveX -= 5;
      naveAngulo = -20;  
    }
    if (key == 'd' || key == 'D') {
      naveX += 5;
      naveAngulo = 20;   
    }
  } else {
    naveAngulo = 0;  
  }
  
  naveX = constrain(naveX, 0, width - naveLargura);
  
  if (tiroAtivo) {
    fill(255, 0, 0);
    rect(tiroX, tiroY, 5, 10);
    tiroY -= tiroVelocidade;
    
    if (tiroY < 0) {
      tiroAtivo = false;
    }
  }
  
  for (int i = 0; i < monstrosX.length; i++) {
    if (monstroVivo[i]) {
      image(monstroImg, monstrosX[i], monstrosY[i], 30, 20);  
      monstrosY[i] += velocidadeMonstro[i];  

      if (tiroAtivo && tiroX > monstrosX[i] && tiroX < monstrosX[i] + 30 && 
          tiroY > monstrosY[i] && tiroY < monstrosY[i] + 20) {
        monstroVivo[i] = false;
        tiroAtivo = false;
        monstrosX[i] = random(width - 30);
        monstrosY[i] = random(-200, -50);
        velocidadeMonstro[i] = random(2, 5);  
        monstroVivo[i] = true;
      }

      if (monstrosY[i] > height) {
        monstrosX[i] = random(width - 30);
        monstrosY[i] = random(-200, -50);
        velocidadeMonstro[i] = random(2, 5); 
      }

      if (monstrosY[i] + 20 >= naveY && monstrosX[i] > naveX && monstrosX[i] < naveX + naveLargura) {
        println("Game Over! Monstro atingiu a nave.");
        noLoop();  
      }
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    if (!tiroAtivo) {
      tiroX = naveX + naveLargura / 2;
      tiroY = naveY;
      tiroAtivo = true;
    }
  }
}
