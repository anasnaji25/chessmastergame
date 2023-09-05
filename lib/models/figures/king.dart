import 'package:chessmastergame/models/cell.dart';
import 'package:chessmastergame/models/cell_calculator.dart';
import 'package:chessmastergame/models/figure.dart';
import 'package:chessmastergame/models/figure_types.dart';
import 'package:chessmastergame/models/game_colors.dart';

class King extends Figure {
  King({required GameColors color, required Cell cell})
      : super(color: color, cell: cell, type: FigureTypes.king);

  @override
  bool availableForMove(Cell to) {
    if (!super.availableForMove(to)) {
      return false;
    }

    return CellCalculator.hasWayForKing(cell, to);
  }
}
