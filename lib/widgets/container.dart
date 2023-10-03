import 'package:flutter/material.dart';

Widget boxContainer(String path, String text, onClick) {
  return InkWell(
    onTap: onClick,
    child: Container(
      height: 60,
      width: 350,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Image.asset(
                path,
                height: 25,
                width: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
