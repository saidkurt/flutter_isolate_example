part of 'homepage_view_model_dart_bloc.dart';

abstract class HomepageViewModelState extends Equatable {
  const HomepageViewModelState();

  @override
  List<Object> get props => [];
}

class HomepageViewModelInitial extends HomepageViewModelState {}

@immutable
class CalculatedValue extends HomepageViewModelState {
  final int numberModel;
  const CalculatedValue(this.numberModel);
  @override
  List<Object> get props => [numberModel];
}