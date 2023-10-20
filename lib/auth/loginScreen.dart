import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:test/view/homescreen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String _textFieldValue = '';

    // Validator function
    String? _validateTextField(String value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      // You can add more complex validation logic here if needed
      return null;
    }

    TextEditingController emailControler = TextEditingController();
    TextEditingController passControler = TextEditingController();
    void login(String email, password) async {
      try {
        print(password);
        print(email);
        final response = await post(
            Uri.parse("https://fakestoreapi.com/auth/login"),
            body: {"username": email, "password": password});
        if (response.statusCode == 200) {
          print("account  success");
          var data = jsonDecode(response.body.toString());
          print(data);
          Get.toNamed("/home");
        } else {
          Fluttertoast.showToast(msg: "login failed");
          print("failed");
        }
      } catch (e) {
        print(e.toString());
      }
    }

    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        TextFormField(
          controller: emailControler,
          decoration: InputDecoration(labelText: 'Enter username'),
          validator: (e) {
            if (e!.isEmpty) {
              return 'Please enter some text';
            }
            // You can add more complex validation logic here if needed
            return null;
          },
          onSaved: (String? value) {
            // Do something with the value
            _textFieldValue = value!;
          },
        ),
        TextFormField(
          controller: passControler,
          decoration: InputDecoration(labelText: 'Enter password'),
          validator: (e) {
            if (e!.isEmpty) {
              return 'Please enter some text';
            }
            // You can add more complex validation logic here if needed
            return null;
          },
          onSaved: (String? value) {
            // Do something with the value
            _textFieldValue = value!;
          },
        ),
        ElevatedButton(
            onPressed: () {
              SnackBar(content: Text("errer"));
              login(emailControler.text.toString(),
                  passControler.text.toString());
            },
            child: Text("login page")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("back")),
      ]),
    );
  }
}
