import 'package:flutter/material.dart';
import 'package:xetia_auth/xetia_auth.dart';
import 'package:xetia_pos/xetia_pos.dart';

class ExamplePos extends StatefulWidget {
  const ExamplePos({super.key});

  @override
  State<ExamplePos> createState() => _ExamplePosState();
}

class _ExamplePosState extends State<ExamplePos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final userEntity = MyAccount.of(context).userEntities!.first;

          return POSCartPage.widget(
            context,
            entity: userEntity,
          );
        },
      ),
    );
  }
}
