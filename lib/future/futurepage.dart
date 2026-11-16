import 'package:material_ui/material_ui.dart';

class Futurepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Futurepage> createState() => _FuturepageState();
}

class _FuturepageState extends State<Futurepage> {
  Future<String>? _futureData;
  Stream<int>? _streamData;
  final int _initialPrice = 1000;

  Future<String> _futureTest() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Future Completed';
  }

  Stream<int> _streamConstruct() => Stream<int>.periodic(const Duration(seconds: 1), (c) => _initialPrice + c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorScheme.fromSeed(seedColor: Colors.green).inversePrimary,
        title: Text('Future Test'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => setState(() {
                _futureData = _futureTest();
              }),
              child: Padding(
                padding: EdgeInsetsGeometry.all(8),
                child: Text('Future Test', style: TextStyle(fontSize: 20)),
              ),
            ),
            FutureBuilder(
              future: _futureData,
              builder: (c, s) => s.connectionState == ConnectionState.done
                  ? Text(s.data!, style: TextStyle(fontSize: 20))
                  : (s.connectionState == ConnectionState.none ? Text('Press button to fetch data') : CircularProgressIndicator()),
            ),
            SizedBox(height: 20),

            FilledButton(
              onPressed: _streamData == null ? () => setState(() => _streamData = _streamConstruct()) : null,
              child: _streamData == null ? Text('Start price counting', style: TextStyle(fontSize: 20)) : Text('Counting...'),
            ),
            StreamBuilder(
              initialData: _initialPrice,
              stream: _streamData,
              builder: (c, s) => s.connectionState == ConnectionState.waiting
                  ? CircularProgressIndicator()
                  : (s.connectionState == ConnectionState.active ? Text('Price: ${s.data}', style: TextStyle(fontSize: 25)) : SizedBox.shrink()),
            ),
          ],
        ),
      ),
    );
  }
}
