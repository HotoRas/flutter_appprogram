import 'package:material_ui/material_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LottoPageFab extends StatelessWidget {
  final void Function() adder;
  final void Function() resetter;
  const new({super.key, required this.adder, required this.resetter});

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Positioned(
        right: MediaQuery.of(context).orientation == Orientation.portrait ? 10 : 76,
        bottom: MediaQuery.of(context).orientation == Orientation.portrait ? 66 : 6,
        child: FloatingActionButton(onPressed: adder, heroTag: 'addLotto', tooltip: 'Add another lottery', child: Icon(Icons.add)),
      ),
      Positioned(
        right: 10,
        bottom: 6,
        child: FloatingActionButton(onPressed: resetter, heroTag: 'flushLotto', tooltip: 'flush lottery', child: Icon(Icons.delete)),
      ),
    ],
  );
}

class LottoBall extends StatelessWidget {
  final int number;
  const new(this.number, {super.key});
  Color _ballColor() => switch ((number / 10).toInt()) {
    0 => Colors.yellowAccent,
    1 => Colors.lightBlueAccent,
    2 => Colors.orangeAccent,
    3 => Colors.white,
    _ => Colors.greenAccent,
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset('images/svg/$number.svg', colorFilter: ColorFilter.mode(_ballColor(), BlendMode.srcIn)),
    );
  }
}
