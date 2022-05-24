// ignore_for_file: prefer_const_constructors, duplicate_ignore, unnecessary_string_escapes, must_be_immutable

import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  FormScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Submit Form"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Center(
                child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Username",
                              labelText: "Username",
                            ),
                            validator: (value) {
                              final nameRegExp = RegExp("([a-zA-Z0-9_\s]+)");
                              if (value?.isEmpty ?? true) {
                                return "Enter Valid Username";
                              } else if (!nameRegExp.hasMatch(value ?? "")) {
                                return "not valid username";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter 10 Digits Mobile Number",
                              labelText: "Mobile Number",
                            ),
                            validator: (value) {
                              final mobilenumberRegExp =
                                  RegExp("^(?:[+0]9)?[0-9]{10}\$");
                              if (value?.isEmpty ?? true) {
                                return "Enter Valid Mobilenumber";
                              } else if (!mobilenumberRegExp
                                  .hasMatch(value ?? "")) {
                                return "Not Valid Mobilenumber";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              labelText: "Email",
                            ),
                            validator: (value) {
                              final emailRegExp = RegExp(
                                  r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                              if (value?.isEmpty ?? true) {
                                return "Enter Valid Email";
                              } else if (!emailRegExp.hasMatch(value ?? "")) {
                                return "Not Valid Email";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter password",
                              labelText: "Password",
                            ),
                            onChanged: (value) {
                              password = value;
                            },
                            validator: (value) {
                              final passwordRegExp = RegExp(
                                  r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}");
                              if (value?.isEmpty ?? true) {
                                return "Enter Valid Password";
                              } else if (!passwordRegExp
                                  .hasMatch(value ?? "")) {
                                return "not valid Password";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter confirm password",
                              labelText: "Confirm Password",
                            ),
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return "Enter Confirm Password";
                              } else if (value != password) {
                                return "Confirm password is not match with password ";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                Navigator.pop(context);
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Expanded(
                                      child: AlertDialog(
                                        title: Text('DONE!!'),
                                        content: Text(
                                            'You Have Successfully Submitted Information'),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: (() {
                                                Navigator.pop(context);
                                              }),
                                              child: Text("OK")),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            child: Text(
                              "Submit",
                            ),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
