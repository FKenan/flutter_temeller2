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

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var _sayac = 0;

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
              _sayac--;
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () {
              _sayac++;
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
