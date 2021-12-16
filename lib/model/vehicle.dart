import 'package:flutter/material.dart';

class Vehicle {
  final String? name;
  final String? url;
  final String? description;
  final Color? cardColor;
  final int? price;

  Vehicle({this.name, this.url, this.description, this.cardColor, this.price});
}

//get items
List<Vehicle> get getCars => _cars;
List<Vehicle> get getBigCars => _bigCars;
List<Vehicle> get getBikes => _bikes;

final List<Vehicle> _cars = [
  Vehicle(
    name: "Classic Car",
    url: "assets/images/cars/car1.png",
    description: "Wanna ride the coolest sport car in the world?",
    cardColor: const Color(0xFFB67853),
    price: 34,
  ),
  Vehicle(
    name: "Sport Car",
    url: "assets/images/cars/car2.png",
    description: "Wanna ride the coolest sport car in the world?",
    cardColor: const Color(0xFF60B5F4),
    price: 55,
  ),
  Vehicle(
    name: "Flying Car",
    url: "assets/images/cars/car3.png",
    description: "Wanna ride the coolest sport car in the world?",
    cardColor: const Color(0xFF8382C2),
    price: 500,
  ),
  Vehicle(
    name: "Electric Car",
    url: "assets/images/cars/car4.png",
    description: "Wanna ride the coolest sport car in the world?",
    cardColor: const Color(0xFF2A3640),
    price: 45,
  ),
];

final List<Vehicle> _bigCars = [
  Vehicle(
    name: "Motorhome",
    url: "assets/images/big cars/car1.png",
    description:
        "Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.",
    cardColor: const Color(0xFF7EB0AA),
    price: 23,
  ),
  Vehicle(
    name: "Pickup",
    url: "assets/images/big cars/car2.png",
    description:
        "Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.",
    cardColor: const Color(0xFFAD8E73),
    price: 10,
  ),
  Vehicle(
    name: "Airplane",
    url: "assets/images/big cars/car3.png",
    description:
        "Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.",
    cardColor: const Color(0xFFA34D48),
    price: 11,
  ),
  Vehicle(
    name: "Bus",
    url: "assets/images/big cars/car4.png",
    description:
        "Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.",
    cardColor: const Color(0xFFE4C970),
    price: 14,
  ),
];

final List<Vehicle> _bikes = [
  Vehicle(
    name: "Vespa",
    url: "assets/images/bikes/bike1.png",
    description:
        "They say one of the best ways to know a city is by riding a bike.",
    cardColor: const Color(0xFFD7913F),
    price: 23,
  ),
  Vehicle(
    name: "Electric Bike",
    url: "assets/images/bikes/bike2.png",
    description:
        "They say one of the best ways to know a city is by riding a bike.",
    cardColor: const Color(0xFFDF7588),
    price: 10,
  ),
  Vehicle(
    name: "Delivery Bike",
    url: "assets/images/bikes/bike3.png",
    description:
        "They say one of the best ways to know a city is by riding a bike.",
    cardColor: const Color(0xFF60C1DC),
    price: 11,
  ),
  Vehicle(
    name: "Scooter",
    url: "assets/images/bikes/bike4.png",
    description:
        "They say one of the best ways to know a city is by riding a bike.",
    cardColor: const Color(0xFF6C6363),
    price: 14,
  ),
];
