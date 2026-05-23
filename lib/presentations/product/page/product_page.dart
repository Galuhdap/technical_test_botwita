import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_test_borwita/core/components/appbar_component.dart';
import 'package:technical_test_borwita/core/components/input_component.dart';
import 'package:technical_test_borwita/core/extensions/sized_box_ext.dart';
import 'package:technical_test_borwita/presentations/product/bloc/product_bloc.dart';
import 'package:technical_test_borwita/presentations/product/page/section/filter_product_section.dart';
import 'package:technical_test_borwita/presentations/product/page/section/product_section.dart';
import 'package:technical_test_borwita/presentations/profile/page/profile_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(
        title: 'Product',
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ProfilePage()),
              );
            },
            child: Icon(Icons.person),
          ),
          10.width,
          InkWell(onTap: () {}, child: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CustomTextField(
                  onChanged: (value) {
                    context.read<ProductBloc>().add(
                      ProductEvent.searchProduct(value),
                    );
                  },
                  hintText: 'Search product',
                  prefixIcon: Icon(Icons.search),
                  controller: TextEditingController(),
                  keyboardType: TextInputType.text,
                ),

                12.height,
                FilterProduct(),
              ],
            ),
          ),

          ProductSection(),
        ],
      ),
    );
  }
}
