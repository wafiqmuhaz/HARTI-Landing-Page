import 'package:flutter/material.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

class ProfileList extends StatelessWidget {
  final String title;
  const ProfileList({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 2.0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: context.isPhone ? 10 : 22,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: context.isPhone ? 20 : 30,
                backgroundColor: const Color.fromARGB(255, 60, 105, 141),
                child: CircleAvatar(
                  radius: context.isPhone ? 20 : 28,
                  child: Icon(
                    Icons.arrow_forward,
                    size: context.isPhone ? 10 : null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
