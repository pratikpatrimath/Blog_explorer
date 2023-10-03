import 'package:flutter/material.dart ';

Widget usernameTextField() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
    child: Column(
      children: [
        Text('Username'),
        TextFormField(
          decoration: InputDecoration(),
        )
      ],
    ),
  );
}
