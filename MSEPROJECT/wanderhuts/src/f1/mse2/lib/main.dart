import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 200, width = 200, opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: Text('Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: opacity,
              child: Container(height: 100, width: 100, color: Colors.red),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: height,
              width: width,
              color: Colors.yellow,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  height = height == 250 ? 200 : 250;
                  width = width == 250 ? 200 : 250;
                });
              },
              child: Text('Change Size'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity = opacity == 0 ? 1 : 0;
                });
              },
              child: Text('Change opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
