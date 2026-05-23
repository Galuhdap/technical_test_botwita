import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_test_borwita/core/extensions/sized_box_ext.dart';
import 'package:technical_test_borwita/presentations/product/bloc/product_bloc.dart';

class FilterProduct extends StatelessWidget {
  const FilterProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            hint: Text('Filter Category'),
            items: [
              DropdownMenuItem(value: 'all', child: Text('All')),
              DropdownMenuItem(
                value: 'ELECTRONICS',
                child: Text('Electronics'),
              ),
              DropdownMenuItem(value: 'JEWELERY', child: Text('Jewelery')),
              DropdownMenuItem(
                value: 'MEN_S_CLOTHING',
                child: Text('Men Clothing'),
              ),
              DropdownMenuItem(
                value: 'WOMEN_S_CLOTHING',
                child: Text('Women Clothing'),
              ),
            ],
            onChanged: (value) {
              context.read<ProductBloc>().add(
                ProductEvent.filterCategory(value!),
              );
            },
          ),
        ),

        12.height,

        PopupMenuButton(
          icon: Icon(Icons.sort),
          onSelected: (value) {
            if (value == 'low') {
              context.read<ProductBloc>().add(ProductEvent.sortPriceLowHigh());
            } else {
              context.read<ProductBloc>().add(ProductEvent.sortPriceHighLow());
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(value: 'low', child: Text('Low → High')),
            PopupMenuItem(value: 'high', child: Text('High → Low')),
          ],
        ),
      ],
    );
  }
}
