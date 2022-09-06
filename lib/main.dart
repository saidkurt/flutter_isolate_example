import 'package:flutter/material.dart';
import 'package:flutter_isolate_example/view/homepage_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_isolate_example/viewmodel/homepage_view_model/homepage_view_model_dart_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (homePageViewModel) => HomePageViewModel(),
      child: MaterialApp(
        title: 'Flutter Isolate Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePageView(),
      ),
    );
  }
}
