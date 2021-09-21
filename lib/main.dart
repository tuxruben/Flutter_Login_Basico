import 'package:flutter/material.dart';

void main() => runApp(Miapp());

class Miapp extends StatelessWidget {
  const Miapp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Myapp",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: cuerpo(),
    ));
  }
}

Widget cuerpo() {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://mobimg.b-cdn.net/lwallpaper_img/night_mountains/real/1_night_mountains.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            campoUsuario(),
            campoConstrasena(),
            SizedBox(
              height: 15.0,
            ),
            botonEntrar()
          ],
        )),
      ));
}

Widget nombre() {
  return Text("Sing ing",
      style: TextStyle(
          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold));
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
      decoration: InputDecoration(
          hintText: "User", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget campoConstrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget botonEntrar() {
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 10),
      onPressed: () {},
      child: Text(
        "Entrar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}
