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
        // uygulama genelinde widgetlara özel tema atamak için burda belirtiriz.
        useMaterial3: false,
        textTheme: TextTheme(
          labelLarge: TextStyle(
            fontSize: 24,
            color: Theme.of(context).colorScheme.primary,
          ),
        ), // uygulamanın genelinde verilen text teması
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          // uygulamanın floating buttonlarının kullanacağı default tema
          backgroundColor: Colors.yellow,
        ),
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
    // setState ile state i güncelliyoruz. Reacttan farklı olarak uygulamanın güncellenmesi gereken yerlerde setState kullanırız.
    // setState çağırılınca ilgili widgetin buildini tekrar çağırır.
    // kodları setState içine yazmamız gerekmez.
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
              style: Theme.of(context)
                  .textTheme
                  .labelLarge, //context fonksiyonda parametre olarak aldığımız context
            ),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                // copywith ile display medium özelliğininin özelliklerini değiştirebiliriz.
                color: _sayac < 0 ? Colors.red : Colors.green,
              ),
            ),
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
