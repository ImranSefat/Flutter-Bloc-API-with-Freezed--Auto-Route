part of 'game_data_bloc.dart';

abstract class GameDataEvent extends Equatable {
  const GameDataEvent();

  @override
  List<Object> get props => [];
}

class LoadGameDataEvent extends GameDataEvent {}
