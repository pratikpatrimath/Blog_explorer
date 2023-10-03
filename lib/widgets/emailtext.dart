import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

Widget emailTextField() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
    child: Column(
      children: [
        Text('Email'),
        TextFormField(
          decoration: InputDecoration(),
        )
      ],
    ),
  );
}
