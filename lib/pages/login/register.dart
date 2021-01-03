import 'package:flutter/material.dart';
import 'package:app_uas22/data/database-helper.dart';
import 'package:app_uas22/models/user.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState  extends State<RegisterPage> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _name, _username, _password;

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new RaisedButton(
      onPressed: _submit,
      child: new Text("Sign up", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      color: Colors.white,
    );


    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Text(
          "Sign Up",
          textScaleFactor: 2.0,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _name = val,
                  decoration: new InputDecoration(labelText: "Nama Lengkap",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(150.0))), ),
                ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _username = val,
                  decoration: new InputDecoration(labelText: "E-mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(150.0))),),
                ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password",
                      border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(150.0)),
                    suffixIcon: GestureDetector(
                      onTap: (){},
                      child: Icon(Icons.visibility,
                      ),
                    ),
                  ),
                ),
                ),

            ],
          ),
        ),
        loginBtn
      ],
    );

    return new Scaffold(
      backgroundColor: Colors.brown.shade100,
      key: scaffoldKey,
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _submit(){
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user = new User(_name, _username, _password, null);
        var db = new DatabaseHelper();
        db.saveUser(user);
        _isLoading = false;
        Navigator.of(context).pushNamed("/login");
      });
    }
  }
}