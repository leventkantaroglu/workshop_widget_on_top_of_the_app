import 'package:flutter/material.dart';
import 'package:workshop_widget_on_top_of_the_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      builder: (BuildContext context, Widget? child) {
        return Stack(
          children: [
            if (child != null) child,
            banner(),
            Center(child: watermark()),
          ],
        );
      },
    );
  }

  Widget banner() {
    return const Banner(
      message: "Demo",
      color: Colors.green,
      location: BannerLocation.topStart,
    );
  }

  Widget watermark() {
    return Material(
      color: Colors.transparent,
      child: Text(
        "Watermark",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey.withOpacity(0.5),
          fontSize: 44,
        ),
      ),
    );
  }
}
