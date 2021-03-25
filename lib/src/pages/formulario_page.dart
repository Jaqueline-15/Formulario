import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var defaultText = TextStyle(color: Colors.black);
  var linkText = TextStyle(color: Colors.blue);
  FocusNode nombreFocus;
  FocusNode correoFocus;
  FocusNode passwordFocus;

  String nombre;
  String correo;
  String password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Center(child: Text('Jaqueline Alvarez Barron')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  child: Container(
                    width: 500.0,
                    child: Image.asset('assets/image/titan.jpg'),
                  ),
                ),
                Center(
                  child: Container(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'nombre ',
                          hintText: 'ej. dana ramirez',
                          prefixIcon: Icon(Icons.account_box_rounded)),
                      //controller: nombreTextController,
                      onSaved: (value) {
                        nombre = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo obligatorio';
                        }
                      },
                      focusNode: this.nombreFocus,
                      onEditingComplete: () =>
                          requestFocus(context, correoFocus),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Container(
                  child: SizedBox(
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'correo',
                          hintText: 'ej.someone@example.com',
                          prefixIcon: Icon(Icons.mail_rounded)),
                      //controller: apTextController,
                      onSaved: (value) {
                        correo = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo obligatorio';
                        }
                      },
                      focusNode: this.passwordFocus,
                      onEditingComplete: () =>
                          requestFocus(context, correoFocus),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Container(
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'contraseña',
                          hintText: 'ej. paswword123ABC',
                          prefixIcon: Icon(Icons.lock_rounded)),
                      //controller: apTextController,
                      onSaved: (value) {
                        password = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo obligatorio';
                        }
                      }),
                ),
                SizedBox(
                  height: 50.0,
                  width: 50,
                ),
                RaisedButton(
                  color: Colors.pink,
                  textColor: Colors.white,
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      if (nombre.compareTo('Jaqueline Alvarez Barron') == 0 &&
                          correo.compareTo('jackie_Alvarez01@gmail.com') == 0 &&
                          password.compareTo('0000') == 0) {
                        Navigator.pushNamed(context, 'formulario_dos',
                            arguments: Argumentos(
                                nombre: this.nombre,
                                email: this.correo,
                                password: this.password));
                      } else {
                        print('Datos incorrectos');
                      }
                    }
                  },
                  child: Text('ingresar'),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus();
  }

  @override
  void initState() {
    super.initState();
    //nombreTextController = TextEditingController();
    //apTextController = TextEditingController();
    nombreFocus = FocusNode();
    correoFocus = FocusNode();
    passwordFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    //nombreTextController.dispose();
    //apTextController.dispose();
    nombreFocus.dispose();
    correoFocus.dispose();
    passwordFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String email;
  String password;

  Argumentos({this.nombre, this.email, this.password});
}
