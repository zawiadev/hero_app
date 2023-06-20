

import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: const Image(
        image: NetworkImage(
            'https://www.tutorialkart.com/img/hummingbird.png'),
      ),
    );
  }
}
