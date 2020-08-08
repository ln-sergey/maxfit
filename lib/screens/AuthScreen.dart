import 'package:flutter/material.dart';
import 'package:maxfit/widgets/Button.dart';
import 'package:maxfit/widgets/Input.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  String _email;
  String _password;
  bool showLogin = true;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            _logo(),
            showLogin ? Column(
              children: [
                _form('LOGIN', _buttonAction),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    child: Text('Not Registered yet? Register', style: TextStyle(fontSize: 20, color: Colors.white),),
                    onTap: () => setState(() {
                      showLogin = false;
                    }),
                  ), 
                )
              ],
            ) : Column(
              children: [
                _form('REGISTER', _buttonAction),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    child: Text('Already Registered? Login!', style: TextStyle(fontSize: 20, color: Colors.white),),
                    onTap: () => setState(() {
                      showLogin = true;
                    }),
                  ), 
                )
              ],
            )
          ]
        ),
      );

  Widget _logo() => Padding(
        padding: EdgeInsets.only(top: 100),
        child: Align(
          child: Text(
            'MAXFIT',
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      );

  Widget _form(String label, void callback()) => Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: input(Icon(Icons.email), 'Email', _emailController, false),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: input(
                  Icon(Icons.lock), 'Password', _passwordController, true),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: button(context, label, callback),
              ),
            ),
          ],
        ),
      );

  void _buttonAction() {
    _email = _emailController.text;
    _password = _passwordController.text;

    _emailController.clear();
    _passwordController.clear();
  }
}
