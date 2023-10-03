import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget passwordTextField() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
    child: Column(
      children: [
        Text('Password'),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            helperText: 'Password must be 8 characters long',
          ),
        )
      ],
    ),
  );
}
