import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chessmastergame/bloc/states/settings_state.dart';
import 'package:chessmastergame/models/board.dart';
import 'package:chessmastergame/models/lost_figures.dart';
import 'package:chessmastergame/models/player.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(SettingsState initialState) : super(initialState);

  factory SettingsCubit.initial() {
    final board =
        Board(cells: [], whiteLost: LostFigures(), blackLost: LostFigures());
    board.createCells();
    board.putFigures();

    return SettingsCubit(SettingsState(
      whitePlayer: Player.human(),
      blackPlayer: Player.human(),
      difficulty: 1,
    ));
  }
}
