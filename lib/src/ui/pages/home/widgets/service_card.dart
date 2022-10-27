import 'package:flutter/material.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

class ServiceCard extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  const ServiceCard({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.isPhone
          ? CrossAxisAlignment.stretch
          : CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width * 0.40,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 4,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          desc,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
