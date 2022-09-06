part of 'homepage_view_model_dart_bloc.dart';

abstract class HomepageViewModelEvent extends Equatable {
  const HomepageViewModelEvent();

  @override
  List<Object> get props => [];
}

class CalcualteFibWithIsolateEvent extends HomepageViewModelEvent {
  final int value;
  const CalcualteFibWithIsolateEvent({
    this.value = 40,
  });

  @override
  List<Object> get props => [value];
}

class CalcualteFibWithoutIsolateEvent extends HomepageViewModelEvent {
  final int value;
  const CalcualteFibWithoutIsolateEvent({
    this.value = 40,
  });

  @override
  List<Object> get props => [value];
}
