
import 'package:flutter/material.dart';
import 'package:letstudy/miseventos.dart';


class Crearcuenta extends StatelessWidget {

  Widget crearBoton(BuildContext context, String texto){
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: ButtonTheme(
        minWidth: MediaQuery. of(context). size. width * 0.85,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Miseventos()),
            );

          },
          child: Text(
            texto,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20, 
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: 
            Text("¡Vamos a comenzar!"),
          leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
          ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Container(
                margin: EdgeInsets.only(
                  top: 20,
                  right: MediaQuery. of(context). size. width * 0.075,
                  left: MediaQuery. of(context). size. width * 0.075,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                     prefixIcon: Icon(Icons.perm_identity),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Nombre completo'
                  ),
                ),
              ),
               Container(
                margin: EdgeInsets.only(
                  top: 20,
                  right: MediaQuery. of(context). size. width * 0.075,
                  left: MediaQuery. of(context). size. width * 0.075,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Número de celular'
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  right: MediaQuery. of(context). size. width * 0.075,
                  left: MediaQuery. of(context). size. width * 0.075,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Correo electrónico PUCP'
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  right: MediaQuery. of(context). size. width * 0.075,
                  left: MediaQuery. of(context). size. width * 0.075,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                     prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Contraseña'
                  ),
                ),
              ),
               Container(
                margin: EdgeInsets.only(
                  top: 20,
                  right: MediaQuery. of(context). size. width * 0.075,
                  left: MediaQuery. of(context). size. width * 0.075,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Confirmar contraseña'
                  ),
                ),
              ),
              crearBoton(context, "CREAR"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("¿Ya tienes una cuenta? ",
                    style: TextStyle(
                        color: Color(0xff999999)
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Entra aquí",
                      style: TextStyle(
                        color: Color(0xff999999),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Miseventos()),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}