import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_test_borwita/core/extensions/sized_box_ext.dart';
import 'package:technical_test_borwita/presentations/product/bloc/product_bloc.dart';
import 'package:technical_test_borwita/presentations/product/page/product_detail_page.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.when(
            initial: () => SizedBox(),
            loading: () => Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            loaded: (allProducts, filteredProducts) {
              return GridView.builder(
                padding: EdgeInsets.all(16),
                itemCount: filteredProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.58,
                ),
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailPage(
                            image: product.image,
                            title: product.title,
                            category: product.category.name,
                            price: "\$${product.price}",
                            description: product.description,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16),
                              ),
                              child: Image.network(
                                product.image,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                6.height,
                                Text(product.category.name),
                                6.height,
                                Text(
                                  '\$${product.price}',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
