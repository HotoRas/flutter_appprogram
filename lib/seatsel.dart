import 'package:flutter/material.dart';

class SeatSelect extends StatefulWidget {
  const SeatSelect({super.key});

  @override
  State<SeatSelect> createState() => _SeatSelectState();
}

// name starting _ (underbar) sets it private namespace
class _SeatSelectState extends State<SeatSelect> {
  int seatRow = 0, seatCol = 0;
  String seatId = '없음';

  /// Seat ID update routine
  void setSeatId(int row, int col) {
    if (row > 26) {
      AlertDialog(content: Text('RangeError: Seat Row should be in 0 until Z (26), found $seatRow'));
      seatId = 'How did we get here?';
      return;
    }
    if (row == 0 || col == 0) {
      seatRow = seatCol = 0;
      seatId = '없음';
      return;
    }
    seatRow = row;
    seatCol = col;
    seatId = String.fromCharCode(seatRow + 64);
    seatId += seatCol.toString();
  }

  // to more shorten code length
  Color? primaryContainerColor, surfaceContainerLowColor;

  @override
  Widget build(BuildContext context) {
    // apply theme on _SeatSelectState.build
    primaryContainerColor = Theme.of(context).colorScheme.primaryContainer;
    surfaceContainerLowColor = Theme.of(context).colorScheme.surfaceContainerLow;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('공연 좌석 선택', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          spacing: 15,
          children: [
            Text('공연을 관람할 좌석을 선택해주세요', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {},
              child: const Text('                무대                ', style: TextStyle(fontSize: 16)),
            ),
            // A열
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: seatId == 'A1' ? primaryContainerColor : surfaceContainerLowColor),
                  onPressed: () => setState(() => setSeatId(1, 1)),
                  child: const Text('A1', style: TextStyle(fontSize: 16)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: seatId == 'A2' ? primaryContainerColor : surfaceContainerLowColor),
                  onPressed: () => setState(() => setSeatId(1, 2)),
                  child: const Text('A2', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            // B열
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: seatId == 'B1' ? primaryContainerColor : surfaceContainerLowColor),
                  onPressed: () => setState(() => setSeatId(2, 1)),
                  child: const Text('B1', style: TextStyle(fontSize: 16)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: seatId == 'B2' ? primaryContainerColor : surfaceContainerLowColor),
                  onPressed: () => setState(() => setSeatId(2, 2)),
                  child: const Text('B2', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            // show selected text with helper func. -> string
            SeatDisplay(selectedSeat: seatId),
            // reset btn
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              onPressed: () => setState(() => setSeatId(0, 0)),
              child: Text('초기화', style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
            // 학번/이름
          ],
        ),
      ),
      bottomSheet: Text('20231023 전도현', style: TextStyle(fontSize: 12, color: Colors.grey)),
    );
  }
}

/// Internal Seat Button child statefulWidget gets Selected Row, Col
class SeatDisplay extends StatefulWidget {
  final String selectedSeat;
  const SeatDisplay({super.key, required this.selectedSeat});
  @override
  State<SeatDisplay> createState() => _SeatDisplayState();
}

class _SeatDisplayState extends State<SeatDisplay> {
  @override
  Widget build(BuildContext context) {
    return Text('선택한 좌석: ${widget.selectedSeat}', style: TextStyle(color: Colors.deepPurple, fontSize: 18));
  }
}
