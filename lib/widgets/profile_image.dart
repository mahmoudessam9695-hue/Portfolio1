import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double size;

  const ProfileImage({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: Colors.grey, // لون الخلفية
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(600),
            image: const DecorationImage(
              image: AssetImage('assets/images/Essam.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
