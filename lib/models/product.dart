class Product {
  final String id;
  final String name;
  final int originalPrice;
  final int finalPrice;
  final int pricePerLiter;
  final String imagePath;

  const Product({
    required this.id,
    required this.name,
    required this.originalPrice,
    required this.finalPrice,
    required this.pricePerLiter,
    required this.imagePath,
  });
}

final mockProducts = [
  const Product(
    id: '1',
    name: 'Coca-Cola Original 1.0lt',
    originalPrice: 1490,
    finalPrice: 1190,
    pricePerLiter: 1190,
    imagePath: 'assets/images/coca-cola-original-1-0-lt.png',
  ),
  const Product(
    id: '2',
    name: 'Coca-Cola Zero 3.0 lt',
    originalPrice: 2990,
    finalPrice: 2690,
    pricePerLiter: 897,
    imagePath: 'assets/images/coca-cola-zero-3-0-lt.png',
  ),
  const Product(
    id: '3',
    name: 'Fanta Naranja 1.5 lt',
    originalPrice: 2190,
    finalPrice: 1790,
    pricePerLiter: 1193,
    imagePath: 'assets/images/fanta-1-5-lt.png',
  ),
  const Product(
    id: '4',
    name: 'Sprite Sin Azucar 1.5 lt',
    originalPrice: 2190,
    finalPrice: 1790,
    pricePerLiter: 1193,
    imagePath: 'assets/images/sprite-1-5-lt.png',
  ),
  const Product(
    id: '5',
    name: 'Schweppes Tónica Regular 1.5 lt',
    originalPrice: 2190,
    finalPrice: 1790,
    pricePerLiter: 1193,
    imagePath: 'assets/images/schweppes-tonica-1-5-lt.png',
  ),
  const Product(
    id: '6',
    name: 'Inca Kola Sin Azucar 1.5 lt',
    originalPrice: 2190,
    finalPrice: 1790,
    pricePerLiter: 1193,
    imagePath: 'assets/images/inca-kola-sin-azucar-1-5-lt.png',
  ),
];
