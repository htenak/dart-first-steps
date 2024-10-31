abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Flyer {
  void fly() => print('I am flying');
}

mixin Walker {
  void walk() => print('I am walking');
}

mixin Swimmer {
  void swim() => print('I am swimming');
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Flyer, Walker {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Flyer {}

class Duck extends Bird with Flyer, Walker, Swimmer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Flyer, Swimmer {}

void main() {

  final flipper = Dolphin();
  flipper.swim();

  print('<<<<<<>>>>>>');

  final batman = Bat();
  batman.fly();

  print('<<<<<<>>>>>>');

  final namor = Duck();
  namor.walk();
  namor.swim();
  namor.fly();
  
}
