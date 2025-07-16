import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors
            .pink, // primarySwatch ile tema renki verdik butonlara appbara vb burda belirlediğimiz renk verilir.
      ),
      home: HomePage(),
    );
  }
}

//    stateless widget daha sonradan değişime uğramayacak olan widgetler.değişmeyecek yazılar gibi.
//    statefull widget daha sonradan değişecek widgetler. sayaç texti gibi.

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _sayac = 0;

  void _sayacArttir() {
    // statefullWidget classından extend edince setState kullanabiliriz.
    setState(() {
      _sayac++;
    });
  }

  void _sayacAzalt() {
    setState(() {
      _sayac--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bölüm 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona basılma sayısı:",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(_sayac.toString()),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _sayacAzalt();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () {
              _sayacArttir();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
