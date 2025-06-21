import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_rental/cubit/category_cubit.dart';
import 'package:house_rental/view/widgets/category_btn_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<Map<String, dynamic>> categories = const [
    {"icon": Icons.house, "label": "Houses"},
    {"icon": Icons.cottage, "label": "Cottages"},
    {"icon": Icons.apartment, "label": "Apartments"},
    {"icon": Icons.business, "label": "Offices"},
  ];

  @override
  Widget build(BuildContext context) {
    final selectedCategory = context.watch<CategoryCubit>().state;
    return Scaffold(
      body: Column(
        children: [
          Text('Draem House: \nFind Yours'),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
              final cat = categories[index];
              return CategoryBtnWidget(isSelected: index == selectedCategory, btn_name: Text(cat['label']), btn_icon: cat['icon']);
            }),
          )
        ],
      ),
    );
  }
}
