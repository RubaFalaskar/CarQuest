import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_quest/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

import '../car_details/car_details_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CarSuggestionList extends StatefulWidget {
  const CarSuggestionList({super.key});

  @override
  State<CarSuggestionList> createState() => _CarSuggestionListState();
}

class _CarSuggestionListState extends State<CarSuggestionList> {

  List<Car> cars = [];

  @override
  void initState() {
    super.initState();
    fetchCars();
  }

  Future<List<Car>> getCars() async {
    try {
      QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('Cars').get();

      return querySnapshot.docs.map((doc) {
        return Car.fromFirestore(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      print('Error fetching cars: $e');
      return [];
    }
  }

  Future<void> fetchCars() async {
    var list = await getCars();
    setState(() {
      cars = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: cars.map((car) {
          return CarCard(car: car);
        }).toList(),
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 350,
        width: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              child: CachedNetworkImage(
                imageUrl: car.picture,
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  height: 160,
                  color: Colors.grey[300], // لون رمادي كمؤشر للتحميل
                  child: const Center(
                    child: CircularProgressIndicator(), // مؤشر تحميل
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  height: 130,
                  color: Colors.grey[200], // خلفية رمادية عند الفشل
                  child: const Center(
                    child: Icon(Icons.broken_image,
                        color: Colors.red, size: 50), // أيقونة خطأ
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // تفاصيل السيارة
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // اسم السيارة
                  Text("${car.brand} ${car.model}",
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("${car.year} • ${car.category}",
                      style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                  const SizedBox(height: 6),


                  Row(
                    children: [
                      const Icon(Icons.price_change, color: Colors.blueAccent),
                      const SizedBox(width: 4),
                      Text(
                          "${car.price.values.first} - ${car.price.values.last} SR",
                          style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                  const SizedBox(height: 6),

                  // نوع الوقود والمواصفات
                  Row(
                    children: [
                      const Icon(Icons.local_gas_station,
                          color: Colors.redAccent, size: 20),
                      const SizedBox(width: 4),
                      Text(car.fuelType,
                          style:
                          TextStyle(fontSize: 14, color: Colors.black87)),
                    ],
                  ),
                  const SizedBox(height: 6),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // محاذاة النص للأعلى عند الالتفاف
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 20),
                      const SizedBox(width: 4),
                      Expanded(
                        // السماح للنص بالالتفاف داخل المساحة المتاحة
                        child: Text(
                            '4.9'
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),



                  // عرض أول تكوين كمثال


                  // زر المزيد من التفاصيل
                  Builder(
                      builder: (con) {
                        return InkWell(
                          onTap: ()  {
                            Navigator.of(con).push(MaterialPageRoute(
                              builder: (con) => CarDetailsWidget(car: car),
                            ));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('More Details',
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.black),
                            ],
                          ),
                        );
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Car {
  final String name;
  final String model;
  final String brand;
  final int year;
  final String category;
  final String fuelType;
  final String specification;
  final Map<String, double> price; // Price for different configurations
  final List<Map<String, String>> configuration; // Configurations details
  final String picture;

  Car({
    required this.name,
    required this.model,
    required this.brand,
    required this.year,
    required this.category,
    required this.fuelType,
    required this.specification,
    required this.price,
    required this.configuration,
    required this.picture,
  });

  // تحويل بيانات Firestore إلى كائن Car
  factory Car.fromFirestore(Map<String, dynamic> data) {
    return Car(
      name: data['name'] ?? '',
      model: data['model'] ?? '',
      brand: data['brand'] ?? '',
      year: data['year'] is int
          ? data['year']
          : int.tryParse(data['year'].toString()) ?? 0,
      category: data['category'] ?? '',
      fuelType: data['fuel_type'] ?? '',
      specification: data['specification'] ?? '',

      // تحويل القيم إلى double لضمان التوافق مع الموديل
      price: (data['price'] as Map<String, dynamic>).map(
            (key, value) => MapEntry(
            key,
            (value is int)
                ? value.toDouble()
                : (value is double ? value : 0.0)),
      ),

      // التأكد من أن التكوينات تبقى قائمة من الخرائط
      configuration: (data['configuration'] as List<dynamic>?)
          ?.map((config) => Map<String, String>.from(config as Map))
          .toList() ??
          [],

      picture: (data['picture'] ?? '').toString().replaceAll("\"", ""),
    );
  }
}