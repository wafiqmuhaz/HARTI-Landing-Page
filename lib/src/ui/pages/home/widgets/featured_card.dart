import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String image;
  final double fontsize;
  final String desc;
  const FeaturedCard({
    Key? key,
    required this.image,
    required this.desc,
    required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width * 0.28,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: fontsize,
          ),
        ),
      ],
    );
  }
}
