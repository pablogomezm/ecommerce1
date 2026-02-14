import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final int originalPrice;
  final int finalPrice;
  final int pricePerLiter;
  final Color color;

  const Product({
    required this.id,
    required this.name,
    required this.originalPrice,
    required this.finalPrice,
    required this.pricePerLiter,
    required this.color,
  });
}

final mockProducts = [
  const Product(
    id: '1',
    name: 'Coca-Cola Original 1.5L',
    originalPrice: 2490,
    finalPrice: 1990,
    pricePerLiter: 1327,
    color: Color(0xFFDC2626),
  ),
  const Product(
    id: '2',
    name: 'Coca-Cola Zero 1.5L',
    originalPrice: 2490,
    finalPrice: 1890,
    pricePerLiter: 1260,
    color: Color(0xFF111111),
  ),
  const Product(
    id: '3',
    name: 'Fanta Naranja 1.5L',
    originalPrice: 2290,
    finalPrice: 1790,
    pricePerLiter: 1193,
    color: Color(0xFFF97316),
  ),
  const Product(
    id: '4',
    name: 'Sprite 1.5L',
    originalPrice: 2290,
    finalPrice: 1790,
    pricePerLiter: 1193,
    color: Color(0xFF16A34A),
  ),
  const Product(
    id: '5',
    name: 'Coca-Cola Light 1.5L',
    originalPrice: 2490,
    finalPrice: 1990,
    pricePerLiter: 1327,
    color: Color(0xFF9CA3AF),
  ),
  const Product(
    id: '6',
    name: 'Ades Soja Naranja 1L',
    originalPrice: 1890,
    finalPrice: 1490,
    pricePerLiter: 1490,
    color: Color(0xFFFBBF24),
  ),
];
