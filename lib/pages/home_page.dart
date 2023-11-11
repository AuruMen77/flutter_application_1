import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
  // Constructor with optional key parameter
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile IconButton
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                      GoRouter.of(context).go('/profile');
                  },
                  iconSize: 100, // size of the icon
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 20, fontFamily: "Inter"),
                ),
              ],
            ),
            const SizedBox(height: 20), // Spacer between the buttons

            // Interests IconButton
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.star),
                  onPressed: () {
                     GoRouter.of(context).go('/interests');
                  },
                  iconSize: 100, // size of the icon
                ),
                const Text('Interests',
                    style: TextStyle(fontSize: 20, fontFamily: "Inter")),
              ],
            ),
            const SizedBox(height: 20), // Spacer between the buttons

            // Skills IconButton
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.build),
                  onPressed: () {
                    GoRouter.of(context).go('/skills');
                  },
                  iconSize: 100, // size of the icon
                ),
                const Text('Skills',
                    style: TextStyle(fontSize: 20, fontFamily: "Inter")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}