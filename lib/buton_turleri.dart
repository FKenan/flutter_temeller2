import 'package:flutter/material.dart';

class ButonTurleri extends StatelessWidget {
  const ButonTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buton Türleri")),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ), //tıklanabilir yazı.
            TextButton.icon(
              onPressed: () {},
              onLongPress: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.red;
                  } else if (states.contains(WidgetState.hovered)) {
                    return Colors.pink;
                  }
                }),
              ),
              icon: Icon(Icons.add),
              label: Text(
                "Text button with widget",
              ), // başında artı olan tıklanabilir yazı.
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated button"),
            ), // normal butona benzer bi buton türü.
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.remove),
              label: Text("Elevated button"), // iconlu elavated button
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(16),
                side: BorderSide(color: Colors.purple, width: 4), // border
                shape: StadiumBorder(), // butonun şekli
                backgroundColor: Colors.pink, // arkaplan rengi
                foregroundColor: Colors.white, // yazı rengi
              ),
              child: Text("Outline button"),
            ), // dışı çevreli buton
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.remove),
              label: Text("Outline button"), // iconlu dışı çevreli buton
            ),
          ],
        ),
      ),
    );
  }
}
