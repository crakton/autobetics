import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

class PageLoader extends StatelessWidget {
  const PageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PageLoader(),
      extendBody: true,
    );
  }
}