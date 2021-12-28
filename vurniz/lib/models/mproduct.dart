class Product {
  int id, price;
  String name, img;
  double rating;

  Product(
      {required this.id,
      required this.rating,
      required this.name,
      required this.price,
      required this.img});
}

List<Product> chair = [
  Product(
      id: 1,
      rating: 4.1,
      name: 'Brown Chair',
      price: 60,
      img: 'assets/images/chair/brownchair.png'),
  Product(
      id: 2,
      rating: 4.6,
      name: 'Clasic Grey Chair',
      price: 88,
      img: 'assets/images/chair/greychair.png'),
  Product(
      id: 3,
      rating: 4.3,
      name: 'Mini Grey Chair',
      price: 40,
      img: 'assets/images/chair/minigraychair.png'),
  Product(
      id: 3,
      rating: 4.4,
      name: 'Dark Grey Chair',
      price: 48,
      img: 'assets/images/chair/minigraychair2.png'),
  Product(
      id: 4,
      rating: 4.7,
      name: 'Mini White Chair',
      price: 32,
      img: 'assets/images/chair/miniwhitechair.png'),
];

List<Product> cupboard = [
  Product(
      id: 1,
      rating: 4.6,
      name: 'Radex Big',
      price: 220,
      img: 'assets/images/cupboard/1.png'),
  Product(
      id: 2,
      rating: 4.8,
      name: 'Radex Blackmate',
      price: 182,
      img: 'assets/images/cupboard/4.png'),
  Product(
      id: 3,
      rating: 4.7,
      name: 'Swalonbir Palnex',
      price: 199,
      img: 'assets/images/cupboard/7.png'),
  Product(
      id: 4,
      rating: 4.5,
      name: 'Klovva Maiden',
      price: 210,
      img: 'assets/images/cupboard/10.png'),
  Product(
      id: 5,
      rating: 4.9,
      name: 'Klovva Mesiour Black',
      price: 170,
      img: 'assets/images/cupboard/8.png'),
  Product(
      id: 6,
      rating: 4.7,
      name: 'Swalonbir Woddy',
      price: 193,
      img: 'assets/images/cupboard/9.png'),
];

List<Product> bed = [
  Product(
      id: 1,
      rating: 4.5,
      name: 'Cexprez Double',
      price: 320,
      img: 'assets/images/bed/1.png'),
  Product(
      id: 2,
      rating: 4.8,
      name: 'Kolova Double Super',
      price: 380,
      img: 'assets/images/bed/2.png'),
  Product(
      id: 3,
      rating: 4.5,
      name: 'Kolova Single Super',
      price: 285,
      img: 'assets/images/bed/3.png'),
  Product(
      id: 4,
      rating: 4.2,
      name: 'Cexprez Single Super',
      price: 270,
      img: 'assets/images/bed/4.png'),
  Product(
      id: 5,
      rating: 4.6,
      name: 'Vispring King Super',
      price: 420,
      img: 'assets/images/bed/5.png'),
  Product(
      id: 6,
      rating: 4.8,
      name: 'Cexprez Single',
      price: 250,
      img: 'assets/images/bed/6.png'),
  Product(
      id: 7,
      rating: 4.6,
      name: 'Marshal King',
      price: 400,
      img: 'assets/images/bed/7.png'),
];

List<Product> lamp = [
  Product(
      id: 1,
      rating: 4.8,
      name: 'Modern Stand Lamp',
      price: 50,
      img: 'assets/images/lamp/1.png'),
  Product(
      id: 2,
      rating: 4.9,
      name: 'Rabbit Lamp',
      price: 45,
      img: 'assets/images/lamp/2.png'),
  Product(
      id: 3,
      rating: 4.5,
      name: 'Mazor Black C3',
      price: 52,
      img: 'assets/images/lamp/3.png'),
  Product(
      id: 4,
      rating: 4.9,
      name: 'Mr Watson',
      price: 47,
      img: 'assets/images/lamp/4.png'),
  Product(
      id: 5,
      rating: 4.3,
      name: 'Borderaux',
      price: 56,
      img: 'assets/images/lamp/5.png'),
  Product(
      id: 6,
      rating: 4.5,
      name: 'Ratz Modern',
      price: 65,
      img: 'assets/images/lamp/6.png'),
  Product(
      id: 7,
      rating: 4.9,
      name: 'Desk Lamp',
      price: 20,
      img: 'assets/images/lamp/7.png'),
];

List<Product> popular = [
  Product(
      id: 1,
      rating: 4.7,
      name: 'Mini White Chair',
      price: 32,
      img: 'assets/images/chair/miniwhitechair.png'),
  Product(
      id: 2,
      rating: 4.9,
      name: 'Klovva Mesiour Black',
      price: 170,
      img: 'assets/images/cupboard/8.png'),
  Product(
      id: 3,
      rating: 4.8,
      name: 'Modern Stand Lamp',
      price: 50,
      img: 'assets/images/lamp/1.png'),
  Product(
      id: 4,
      rating: 4.9,
      name: 'Desk Lamp',
      price: 20,
      img: 'assets/images/lamp/7.png'),
];

List<Product> allitem = [
  Product(
      id: 1,
      rating: 4.1,
      name: 'Brown Chair',
      price: 60,
      img: 'assets/images/chair/brownchair.png'),
  Product(
      id: 2,
      rating: 4.6,
      name: 'Clasic Grey Chair',
      price: 88,
      img: 'assets/images/chair/greychair.png'),
  Product(
      id: 3,
      rating: 4.3,
      name: 'Mini Grey Chair',
      price: 40,
      img: 'assets/images/chair/minigraychair.png'),
  Product(
      id: 3,
      rating: 4.4,
      name: 'Dark Grey Chair',
      price: 48,
      img: 'assets/images/chair/minigraychair2.png'),
  Product(
      id: 4,
      rating: 4.7,
      name: 'Mini White Chair',
      price: 32,
      img: 'assets/images/chair/miniwhitechair.png'),
  Product(
      id: 5,
      rating: 4.6,
      name: 'Radex Big',
      price: 220,
      img: 'assets/images/cupboard/1.png'),
  Product(
      id: 6,
      rating: 4.8,
      name: 'Radex Blackmate',
      price: 182,
      img: 'assets/images/cupboard/4.png'),
  Product(
      id: 7,
      rating: 4.7,
      name: 'Swalonbir Palnex',
      price: 199,
      img: 'assets/images/cupboard/7.png'),
  Product(
      id: 8,
      rating: 4.5,
      name: 'Klovva Maiden',
      price: 210,
      img: 'assets/images/cupboard/10.png'),
  Product(
      id: 9,
      rating: 4.9,
      name: 'Klovva Mesiour Black',
      price: 170,
      img: 'assets/images/cupboard/8.png'),
  Product(
      id: 10,
      rating: 4.7,
      name: 'Swalonbir Woddy',
      price: 193,
      img: 'assets/images/cupboard/9.png'),
  Product(
      id: 11,
      rating: 4.5,
      name: 'Cexprez Double',
      price: 320,
      img: 'assets/images/bed/1.png'),
  Product(
      id: 12,
      rating: 4.8,
      name: 'Kolova Double Super',
      price: 380,
      img: 'assets/images/bed/2.png'),
  Product(
      id: 13,
      rating: 4.5,
      name: 'Kolova Single Super',
      price: 285,
      img: 'assets/images/bed/3.png'),
  Product(
      id: 14,
      rating: 4.2,
      name: 'Cexprez Single Super',
      price: 270,
      img: 'assets/images/bed/4.png'),
  Product(
      id: 15,
      rating: 4.6,
      name: 'Vispring King Super',
      price: 420,
      img: 'assets/images/bed/5.png'),
  Product(
      id: 16,
      rating: 4.8,
      name: 'Cexprez Single',
      price: 250,
      img: 'assets/images/bed/6.png'),
  Product(
      id: 17,
      rating: 4.6,
      name: 'Marshal King',
      price: 400,
      img: 'assets/images/bed/7.png'),
  Product(
      id: 18,
      rating: 4.8,
      name: 'Modern Stand Lamp',
      price: 50,
      img: 'assets/images/lamp/1.png'),
  Product(
      id: 19,
      rating: 4.9,
      name: 'Rabbit Lamp',
      price: 45,
      img: 'assets/images/lamp/2.png'),
  Product(
      id: 20,
      rating: 4.5,
      name: 'Mazor Black C3',
      price: 52,
      img: 'assets/images/lamp/3.png'),
  Product(
      id: 21,
      rating: 4.9,
      name: 'Mr Watson',
      price: 48,
      img: 'assets/images/lamp/4.png'),
  Product(
      id: 22,
      rating: 4.3,
      name: 'Borderaux',
      price: 56,
      img: 'assets/images/lamp/5.png'),
  Product(
      id: 23,
      rating: 4.5,
      name: 'Ratz Modern',
      price: 65,
      img: 'assets/images/lamp/6.png'),
  Product(
      id: 24,
      rating: 4.9,
      name: 'Desk Lamp',
      price: 20,
      img: 'assets/images/lamp/7.png'),
];
