import 'package:material_ui/material_ui.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

import 'dart:math';

import 'lottomaterial.dart';
import 'responsive/responsive_center.dart';

class LayoutLotto extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text('Lotto')),
    backgroundColor: Theme.of(context).colorScheme.primary,
    body: ResponsiveCenter(maxContentWidth: Breakpoint.deskTop, padding: EdgeInsetsGeometry.all(8), child: Lotto()),
  );
}

class Lotto extends StatefulWidget {
  const new({super.key});

  @override
  State<Lotto> createState() => _LottoState();
}

class _LottoState extends State<Lotto> {
  final ScrollController _scController = ScrollController();
  List<List<int>> lotteryStorage = [];
  void _createNumber() {
    if (lotteryStorage.length >= 15) {
      Fluttertoast.showToast(
        msg: '15번까지만 생성 가능합니다',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return;
    }
    setState(() {
      List<int> lottery = [];
      while (lottery.length < 6) {
        var rnd = Random().nextInt(45) + 1;
        if (!lottery.contains(rnd)) lottery.add(rnd);
      }
      lottery.sort();
      lotteryStorage.add(lottery);
    });
  }

  void _showPopup(BuildContext context, int title, String number) => showDialog(
    context: context,
    builder: (c) => Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        height: 380,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                '$title번째 추첨 번호',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                number,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 40),

              SizedBox(width: 150, height: 150, child: Lottie.asset('images/cat.json')),
            ],
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    floatingActionButton: LottoPageFab(adder: _createNumber, resetter: () => setState(lotteryStorage.clear)),
    backgroundColor: Theme.of(context).colorScheme.primary,

    body: Center(
      child: Column(
        children: [
          Expanded(
            child: RawScrollbar(
              controller: _scController,
              thumbColor: Theme.of(context).colorScheme.inversePrimary.withAlpha(120),
              thumbVisibility: true,
              trackVisibility: true,
              thickness: 15,
              radius: const Radius.circular(10),
              interactive: true,
              child: ListView.separated(
                padding: EdgeInsets.all(8),
                itemBuilder: (BuildContext c, int index) => Padding(
                  padding: EdgeInsets.all(8),
                  child: ListTile(
                    onTap: () => _showPopup(context, index + 1, lotteryStorage[index].toString()),
                    title: Text('${index + 1}번 추첨 번호', style: TextStyle(color: Colors.white)),
                    subtitle: Row(
                      spacing: 4,
                      children: [
                        LottoBall(lotteryStorage[index][0]),
                        LottoBall(lotteryStorage[index][1]),
                        LottoBall(lotteryStorage[index][2]),
                        LottoBall(lotteryStorage[index][3]),
                        LottoBall(lotteryStorage[index][4]),
                        LottoBall(lotteryStorage[index][5]),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (c, i) => const Divider(color: Colors.grey, thickness: .5),
                itemCount: lotteryStorage.length,
              ),
            ),
          ),
          SizedBox(width: 150, height: 150, child: Lottie.asset('images/cat.json')),
        ],
      ),
    ),
  );
}
