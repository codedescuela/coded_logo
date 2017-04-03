//logo para escuela coded
//programado con p5.js
//abril 2017
//v0.0.1

var escuela = "escuela";
var coded = "coded";

var fuente;
var pasoFuente = 22;
var pasoVertical = 25;


//funcion preload() corre una vez, al principio
function preload() {
  //fuente = loadFont("./assets/SourceCodePro-Light.ttf");
  fuente = loadFont("./assets/SourceCodePro-Regular.ttf");
}

//funcion setup() corre una vez, después de preload()
function setup() {

    //crear lienzo, dimensiones en pixeles
    //createCanvas(ancho, altura);
    createCanvas(180, 180);

    //fondo negro
    //background(color)
    background(0);

    //texto centrado
    textAlign(LEFT);

    //texto de tamano 20 pixeles
    textSize(40);

    //tipografia del texto
    //no estoy seguro que este funcionando
    textFont(fuente);

    //texto normal, no cursiva ni negrita
    textStyle(NORMAL);

    for (var i = 0; i*pasoVertical < height; i++) {
      fill(0, 255, 0);
      text(">", 0, i * pasoVertical);
      console.log(i*pasoVertical);
    }

    for (var i = 0; i < escuela.length; i++) {
        //fill(random(255), random(255), random(255));
        fill(0, 255, 0);
        //text(escuela[i], width / 2 - 20 + i * pasoFuente, height / 2);
        text(escuela[i], 20 + i * pasoFuente, pasoVertical*6);
    }

    for (var i = 0; i < coded.length; i++) {
        //fill(random(255), random(255), random(255));
        fill(0, 255, 0);
        text(coded[i], 20 + i * pasoFuente, pasoVertical*7);
    }

}

//funcion draw() corre despues de setup(), en bucle
function draw() {


}
