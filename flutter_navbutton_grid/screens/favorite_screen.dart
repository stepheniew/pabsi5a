import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text('ini adalah halaman favorite'),
      ),
    );
  }
}
