import 'package:flutter/material.dart';
import 'package:fluttertabbar2024/pag01.dart';
import 'package:fluttertabbar2024/pag02.dart';
import 'package:fluttertabbar2024/pag03.dart';

void main() => runApp(MyApp()); // llama al primer widget que se ejecutará

/*
void main() {
    runApp(MyApp);
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // es el estilo de la app
      title: "Primera App",  // nombre de la app
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.alarm)),
              Tab(icon: Icon(Icons.add)),
            ],
          ),
          title: Text('Aplicacion'),
        ),
        body: TabBarView(
          children: [Pag01(), Pag02(), Pag03()],
        ),
      ),
    );
  }
}

