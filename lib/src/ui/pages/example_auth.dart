import 'package:flutter/material.dart';
import 'package:xetia_auth/xetia_auth.dart';

class ExampleAuth extends StatefulWidget {
  const ExampleAuth({Key? key}) : super(key: key);

  @override
  State<ExampleAuth> createState() => _ExampleAuthState();
}

class _ExampleAuthState extends State<ExampleAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      XetiaSignIn(
                        onCompleted: (user) {
                          // ignore: todo
                          // TODO: insert on completed
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: XetiaSignUp(
                    onCompleted: (user) {
                      // ignore: todo
                      // TODO: insert on completed
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
