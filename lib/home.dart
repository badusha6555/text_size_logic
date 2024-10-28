import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double? Font;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "gvbdh",
              style: TextStyle(
                fontSize: Font ??= 20,
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    Font = Font! + 10;
                    0;
                  });
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  setState(() {
                    Font = Font! - 10;
                  });
                },
                icon: Icon(Icons.remove))
          ],
        ),
      ),
    );
  }

  void increaseSize() {
    setState(() {
      Font! + 10;
    });
  }
}
