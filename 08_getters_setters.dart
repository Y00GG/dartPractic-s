void main(){
  
  final cuadrado = Square(side: -12);
  
  //cuadrado.side = 8; 
  
  print( 'area: ${ cuadrado.area } ' );
  
}

class Square {
  
  double _side;
  
  Square({ required double side })
    : assert( side >= 0, 'side must be >= 0' ),
     _side = side;
  
  double get area {
    return _side * _side; 
  }
  
  set side( double value ){
    print('setting new value $value');
    if ( value < 0 ) throw 'Value must be >= 0';  
    _side = value;
  }
  
  double calculateArea() => _side * _side;
  
}
