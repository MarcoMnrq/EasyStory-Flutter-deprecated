import 'package:easystory/screens/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget createEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Usuario o Correo Electrónico'),
      ),
    );
  }

  Widget createPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Contraseña'),
        obscureText: true,
      ),
    );
  }

  Widget createLoginButton(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 32),
        child: RaisedButton(
          child: Text('Entrar'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ));
  }

  Widget renderCreateAccountLink() {
    return Container(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          'Crea tu cuenta aquí',
          textAlign: TextAlign.right,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: [
          Image.asset(
            'lib/assets/images/Play.ico',
            height: 300.0,
          ),
          createEmailInput(),
          createPasswordInput(),
          createLoginButton(context),
          renderCreateAccountLink()
        ]),
      ),
    );
  }
}
