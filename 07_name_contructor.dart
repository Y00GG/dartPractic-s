void main(){
  
  final Map<String, dynamic> rawJson = {
    'name': 'Iron Man',
    'power': 'Money',
    'isAlive': true
  };
  
// final ironman = Hero(
//    isAlive: false, 
//    name: 'Iron Man', 
//    power: 'Money'
//  );
  
  
  final ironMan = Hero.fromJson(rawJson);
  
  print(ironMan);
  
}

class Hero{
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No is alive found';
  
    
  @override
  String toString(){
  return '$name - $power - isAlive; ${isAlive ? 'YES': 'NOP'}'; 
  }
  
}