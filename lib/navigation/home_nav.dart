import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _count = [
    'box 1',
    'box 2',
    'box 3',
    'box 4',
    'box 5',
    'box 6',
    'box 7'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _count.length,
            itemBuilder: (context, index) {
              return Horizontal(
                child: _count[index],
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _count.length,
            itemBuilder: (context, index) {
              return Vertical(
                child: _count[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class Horizontal extends StatelessWidget {
  final String child;
  const Horizontal({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: const Color.fromRGBO(169, 212, 220, 1),
          height: 120,
          width: 200,
          child: Center(
            child: Center(
              child: Text(
                child,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Vertical extends StatelessWidget {
  final String child;
  const Vertical({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: const Color.fromRGBO(169, 212, 220, 1),
          height: 300,
          child: Center(
            child: Center(child: Text(child, style: const TextStyle(fontSize: 20))),
          ),
        ),
      ),
    );
  }
}

