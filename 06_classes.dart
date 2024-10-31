void main() {
  
  final wolverine = new Hero(name: 'Logan', power: 'Regeneration');

  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
  
}

class Hero {
  
  String name;
  String power;

//    Hero( String pName, String pPower )
//      : name = pName,
//        power = pPower;

  Hero({required this.name, this.power = 'No power'});

  @override
  String toString() {
    return '$name - $power';
  }
  
}
