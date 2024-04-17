int x=0;
int y=0;
int anchoEscalon=40;
int altoEscalon=40;

void setup(){
  size(500,500);
  stroke(#FF0000);
  strokeWeight(6);
  background(#FCCD9E);
  while (y<=height){
  line(x,y+altoEscalon,x+anchoEscalon,y+altoEscalon);
  line(x+anchoEscalon,y+altoEscalon,x+anchoEscalon,y+(2*altoEscalon));
  point(x+anchoEscalon,y+altoEscalon-10); 
  x+=altoEscalon;
  y+=anchoEscalon;
  }
}
