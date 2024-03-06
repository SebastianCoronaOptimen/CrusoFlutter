void main(){
  
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Armor',
    'isAlive': true
  };
  
  final ironman = Hero.fromJson( rawJson );
  
  
//  final ironman = Hero(
//    name: rawJson['name'],
//    power: 'Armor',
//   isAlive: false);

  
//  final ironman = Hero(
//  name:'Tony',
//  power: 'Armor',
//  isAlive: false);
  
  print(ironman);
  
}

class Hero{
  String name;
  String power;
  bool isAlive;
  
  Hero({required this.name,
       required this.power,
       required this.isAlive});
  
  Hero.fromJson(Map<String,dynamic> json)
    :name = json['name']?? 'No name found',
     power = json['power'] ?? 'No power found',
     isAlive = json['isAlive'] ?? 'No isAlive found';
  
  
  @override
  String toString(){
    return '$name, $power, is Alive: ${isAlive?'Yes!':'Nop'}';
  }
}