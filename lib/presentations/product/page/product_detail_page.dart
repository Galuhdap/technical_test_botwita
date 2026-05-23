import 'package:flutter/material.dart';
import 'package:technical_test_borwita/core/components/appbar_component.dart';
import 'package:technical_test_borwita/core/extensions/build_context_ext.dart';
import 'package:technical_test_borwita/core/extensions/sized_box_ext.dart';

class ProductDetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String category;
  final String price;
  final String description;

  const ProductDetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.category,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(title: "Product Detail"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_shopping_cart),
              label: const Text("Add to Cart"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: context.deviceWidth,
              height: context.deviceHeight * 0.35,
              child: Image.network(image, fit: BoxFit.cover),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  8.height,

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      category,
                      style: const TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ),

                  12.height,

                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                  20.height,
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.5,
                    ),
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
