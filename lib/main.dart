import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reels_food_app/cubit/cubit.dart';

import 'ui/pages/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => FoodCubit()),
        BlocProvider(create: (_) => TransactionCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInPage(),
        // home: PaymentPage(
        //     transaction: Transaction(
        //   food: mockFoods[0],
        //   id: 1,
        //   quantity: 2,
        //   dateTime: DateTime.now(),
        //   status: TransactionStatus.on_delivery,
        //   user: mockUser,
        //   total: (mockFoods[0].price * 2 * 1.1).toInt() + 50000,
        // )),
        // home: FoodDetailsPage(
        //   onBackButtonPressed: () {},
        //   transaction: Transaction(
        //     food: mockFoods[0],
        //     id: 1,
        //     quantity: 0,
        //     dateTime: DateTime.now(),
        //     status: TransactionStatus.on_delivery,
        //     user: mockUser,
        //     total: 0,
        //   ),
      ),
    );
  }
}
