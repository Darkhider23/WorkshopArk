import 'package:flutter/material.dart';

import '../../models/house_model.dart';

class Constants {
  static List<House> houseList = [
    House(
        id: 1,
        price: 90000,
        address: 'Cluj-Napoca, Str Eroilor 378',
        bedrooms: 1,
        bathrooms: 2,
        squareMeters: 1.416,
        garages: 2,
        kitchens: 1,
        isFavorite: true),
    House(
        id: 2,
        price: 260000,
        address: 'Cluj-Napoca, Str Minerva 38',
        bedrooms: 4,
        bathrooms: 4,
        squareMeters: 2.416,
        garages: 3,
        kitchens: 2,
        isFavorite: false),
    House(
        id: 3,
        price: 288000,
        address: 'Cluj-Napoca, Str Primaverii 37',
        bedrooms: 1,
        bathrooms: 2,
        squareMeters: 3.416,
        garages: 2,
        kitchens: 1,
        isFavorite: false),
    House(
        id: 4,
        price: 320000,
        address: 'Cluj-Napoca, Calea Floresti 37',
        bedrooms: 2,
        bathrooms: 4,
        squareMeters: 4.416,
        garages: 3,
        kitchens: 2,
        isFavorite: false),
    House(
        id: 5,
        price: 149000,
        address: 'Cluj-Napoca, Zona Kaufland Mărăști',
        bedrooms: 1,
        bathrooms: 1,
        squareMeters: 4.416,
        garages: 3,
        kitchens: 2,
        isFavorite: false),
    House(
        id: 6,
        price: 180000,
        address: 'Cluj-Napoca, Str. Horea 17',
        bedrooms: 3,
        bathrooms: 2,
        squareMeters: 120.5,
        garages: 1,
        kitchens: 1,
        isFavorite: false),
    House(
        id: 7,
        price: 210000,
        address: 'Cluj-Napoca, Str. Avram Iancu 89',
        bedrooms: 2,
        bathrooms: 3,
        squareMeters: 150.2,
        garages: 2,
        kitchens: 1,
        isFavorite: true),
    House(
        id: 8,
        price: 320000,
        address: 'Cluj-Napoca, Bulevardul 21 Decembrie 1989 55',
        bedrooms: 4,
        bathrooms: 4,
        squareMeters: 200.0,
        garages: 3,
        kitchens: 2,
        isFavorite: false),
    House(
        id: 9,
        price: 240000,
        address: 'Cluj-Napoca, Str. Napoca 33',
        bedrooms: 3,
        bathrooms: 2,
        squareMeters: 180.8,
        garages: 2,
        kitchens: 1,
        isFavorite: false),
    House(
        id: 10,
        price: 270000,
        address: 'Cluj-Napoca, Bulevardul Eroilor 23',
        bedrooms: 4,
        bathrooms: 3,
        squareMeters: 220.5,
        garages: 2,
        kitchens: 1,
        isFavorite: true),
  ];

  static List<String> imageList = [
    "assets/images/house_1.PNG",
    "assets/images/house_2.PNG",
    "assets/images/house_3.PNG",
    "assets/images/house_4.PNG",
    "assets/images/house_5.PNG",
    "assets/images/house_6.PNG",
    "assets/images/house_7.PNG",
    "assets/images/house_8.PNG",
    "assets/images/house_9.PNG",
    "assets/images/house_10.PNG",
  ];
}

class ColorConstant {
  static const kDarkBlueColor = Color(0xFF12192b);
  static const kWhiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const kBlackColor = Colors.black;
  static const kGreyColor = Colors.grey;
  static const kGreenColor = Colors.green;
}
