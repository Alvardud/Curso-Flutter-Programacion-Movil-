import 'package:flutter/material.dart';

void main() {
  runApp(SegundoWidget());
}

class PrimerWidget extends StatelessWidget {
  const PrimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
            color: Colors.white,
            child: Center(
              child: Text("Hola Mundo"),
            )),
      ),
    );
  }
}

class SegundoWidget extends StatelessWidget {
  const SegundoWidget({Key? key}) : super(key: key);

  //Iconos
  // Icons  (IconData)
  // Ej. Icons.menu

  //Colores
  // Colors (Color)
  // Ej. Colors.green

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        drawer: Drawer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DrawerHeader(child: Container()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Primer elemento"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text("Segundo elemento"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Text("Tercer elemento"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 52),
              child: Text("Cuarto elemento"),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            //logica para adicionar elementos
          },
        ),
        appBar: AppBar(
          //backgroundColor: Colors.green,
          actions: [
            IconButton(
              icon: Icon(Icons.download),
              onPressed: () {
                print("Boton de icono, presionado");
              },
            )
          ],
          centerTitle: true,
          title: Text("Titulo del App Bar"),
        ),
        body: Container(
            color: Colors.white,
            child: Center(
              child: Text("Segundo Hola Mundo"),
            )),
      ),
    );
  }
}
