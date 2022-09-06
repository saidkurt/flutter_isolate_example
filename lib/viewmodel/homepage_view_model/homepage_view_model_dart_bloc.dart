import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'homepage_view_model_dart_event.dart';
part 'homepage_view_model_dart_state.dart';

class HomePageViewModel extends Bloc<HomepageViewModelEvent, HomepageViewModelState> {
   HomePageViewModel() : super(HomepageViewModelInitial()) {
    on<HomepageViewModelEvent>((event, emit) async {
      if (event is CalcualteFibWithIsolateEvent) await _calculateWithIsolate(event, emit);
      if (event is CalcualteFibWithoutIsolateEvent) _calculateWithoutIsolate(event, emit);
    });
  }

  static int _fibonacci(int n) => n <= 2 ? 1 : _fibonacci(n - 2) + _fibonacci(n - 1);

  Future<int> _calculate(int value) => compute(_fibonacci, value);

  Future<void> _calculateWithIsolate(CalcualteFibWithIsolateEvent event, Emitter<HomepageViewModelState> emit) async {
    await _calculate(event.value).then((value) => emit(CalculatedValue(value)));
  }

  void _calculateWithoutIsolate(CalcualteFibWithoutIsolateEvent event, Emitter<HomepageViewModelState> emit) {
    emit(CalculatedValue(_fibonacci(event.value)));
  }
}
