import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ws2/userinfo.dart';

import 'model/user.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _hidePass = true;

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();

  final _nameFocus = FocusNode();
  final _phoneFocus = FocusNode();
  final _emailFocus = FocusNode();
  final _passFocus = FocusNode();
  final _confirmPassFocus = FocusNode();

  User newUser = User();

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Form'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              TextFormField(
                controller: _nameController,
                focusNode: _nameFocus,
                autofocus: true,
                onFieldSubmitted: (_) {
                  _fieldFocusChange(context, _nameFocus, _phoneFocus);
                },
                decoration: InputDecoration(
                  labelText: 'Login*',
                  hintText: 'Enter the login',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        _nameController.clear();
                      },
                      child: Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                ),
                validator: (val) => val!.isEmpty ? 'Login is required' : null,
                onSaved: (value) => newUser.name = value!,
              ),
              SizedBox(
                height: 10,
              ),
              
              TextFormField(
                focusNode: _passFocus,
                onFieldSubmitted: (_) {
                  _fieldFocusChange(context, _passFocus, _confirmPassFocus);
                },
                controller: _passController,
                obscureText: _hidePass,
                maxLength: 12,
                decoration: InputDecoration(
                  labelText: 'Password*',
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _hidePass = !_hidePass;
                        });
                      },
                      icon: Icon(
                          _hidePass ? Icons.visibility : Icons.visibility_off)),
                  prefixIcon: Icon(Icons.security),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                ),
                validator: _validatePassword,
              ),
              
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green)),
                          
            ],
          )),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      _showDialog(name: _nameController.text);
    } else {
      _showMessage(context, message: 'Form is not valid');
    }
  }




  String? _validatePassword(String? value) {
    if (_passController.text.length != 6) {
      return 'At least 6 character required for password';
    } 
     else {
      return null;
    }
  }

  void _showMessage(BuildContext context, {String? message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
        content: Text(
          '${message}',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  void _showDialog({String? name}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('All correct', style: TextStyle(color: Colors.green)),
          content: Text(
            '$name is now a verified register form',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserInfoPage(
                  userInfo: newUser,
                ),));
              },
              child: Text('Verified',
                  style: TextStyle(color: Colors.green, fontSize: 18)),
            )
          ],
        );
      },
    );
  }
}