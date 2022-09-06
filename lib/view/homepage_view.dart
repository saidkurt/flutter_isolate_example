import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_isolate_example/core/base/widget/animation/rotate_animation.dart';
import 'package:flutter_isolate_example/core/const/app_string.dart';
import 'package:flutter_isolate_example/viewmodel/homepage_view_model/homepage_view_model_dart_bloc.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: _animationWidget(),
          ),
          Expanded(
            flex: 1,
            child: _buttons(context),
          ),
        ],
      ),
    );
  }

  Widget _buttons(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => context.read<HomePageViewModel>().add(const CalcualteFibWithIsolateEvent()),
            child: const Text(AppString.calculateFib40WithIsloate)),
        ElevatedButton(
            onPressed: () => context.read<HomePageViewModel>().add(const CalcualteFibWithoutIsolateEvent()),
            child: const Text(AppString.calculateFib40WithoutIsloate)),
      ],
    );
  }

  Widget _animationWidget() {
    return Center(
        child: BaseRotateAnimationWidget(
            animationBodyWidget:Container(
      color: Colors.orange,
      height: 200,
      width: 150,
    )));
  }
}
