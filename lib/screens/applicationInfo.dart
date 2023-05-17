import 'package:flutter/material.dart';
import 'package:nust/widgets/pointNavBar.dart';

class ApplicationInfo extends StatelessWidget {
  const ApplicationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const PointNavBar(),
      appBar: AppBar(
        title: const Text(
          'NAMIBIA UNIVERSITY OF SCIENCE AND TECHNOLOGY',
          style: TextStyle(fontSize: 12),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/NUST-logo.png',
            width: 130,
            height: 100,
          ),
          const Center(
            child: Text('Application Info'),
          ),
        ],
      ),
    );
  }
}
