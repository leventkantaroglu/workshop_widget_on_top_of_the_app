import 'package:flutter/material.dart';
import 'package:workshop_widget_on_top_of_the_app/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: const Center(
        child: Icon(
          Icons.home_filled,
          color: Colors.lime,
          size: 156,
        ),
      ),
      floatingActionButton: fab(),
    );
  }

  Widget fab() {
    return FloatingActionButton(
      onPressed: onFabPressed,
      child: const Icon(
        Icons.circle_outlined,
      ),
    );
  }

  void onFabPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DetailPage(),
      ),
    );
  }
}
