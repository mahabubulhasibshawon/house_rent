import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_rental/cubit/category_cubit.dart';
import 'package:house_rental/view/home_view.dart';
import 'package:house_rental/view/login_view.dart';
import 'package:house_rental/view/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CategoryCubit(),
        child: HomeView(),
      ),
    );
  }
}
