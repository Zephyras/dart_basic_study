void main(List<String> args) {
  Car bmw = Car(320, 100000, "BMW");
  Car benz = Car(250, 70000, "BENZ");
  Car ford = Car(200, 80000, "FORD");

  bmw.saleCar();
  benz.saleCar();
  benz.saleCar();

  //print(benz.price);
  print(bmw.price);
}

class Car {
  int maxSpeed;
  num price;
  String name;

  Car(
    this.maxSpeed,
    this.price,
    this.name,
  ) {
    this.maxSpeed = maxSpeed;
    this.price = price;
    this.name = name;
  }

  num saleCar() {
    price = price * 0.9;
    return price;
  }
}
