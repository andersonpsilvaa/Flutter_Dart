import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum AuthMode { Signup, Login }

class AuthCard extends StatefulWidget {
  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  AuthMode _authMode = AuthMode.Login;

  final _passwordController = TextEditingController();

  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  void _submit() {}

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 220,
        width: deviceSize.width * 0.75,
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty ||
                      !value.contains('@') ||
                      !value.contains('.com')) {
                    return "Informe um e-mail válido!";
                  }
                  return null;
                },
                onSaved: (value) => _authData['email'] = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty || value.length < 5) {
                    return "Informe uma senha válida!";
                  }
                  return null;
                },
                onSaved: (value) => _authData['password'] = value,
                controller: _passwordController,
              ),
              if (_authMode == AuthMode.Signup)
                TextFormField(
                  decoration: InputDecoration(labelText: 'Confirme a Senha'),
                  obscureText: true,
                  validator: _authMode == AuthMode.Signup
                      ? (value) {
                          if (value != _passwordController.text) {
                            return "Senhas diferentes!";
                          }
                          return null;
                        }
                      : null,
                  onSaved: (value) => _authData['password'] = value,
                  controller: _passwordController,
                ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
                child:
                    Text(_authData == AuthMode.Login ? 'ENTRAR' : 'REGISTRAR'),
                onPressed: _submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
