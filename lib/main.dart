// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'navigation/home_nav.dart';

void main() {
  runApp(const basic_ui());
}

class basic_ui extends StatefulWidget {
  const basic_ui({super.key});

  @override
  State<basic_ui> createState() => _basic_uiState();
}

class _basic_uiState extends State<basic_ui> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: homePage(),
      routes: {}
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => homePageState();
}

class homePageState extends State<homePage> {
    int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Basic Flutter App'),
        ),
        bottomNavigationBar: NavigationBar(
          indicatorColor: const Color.fromARGB(69, 0, 174, 255),
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: const <NavigationDestination>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
              ),
              NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
              ),
              NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
              ),
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            Home(),
            Center(child: Text('Search Page'),
            ),
            Center(child: Text('Settings Page'),
            ),
          ],
        ),
        drawer: Drawer(
            child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(child: Text('Drawer', style: TextStyle(fontSize: 24))),
            ListTile(
              title: const Text('Option 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Option 2'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Option 3'),
              onTap: () {},
            ),
          ],
        ),),
      );
  }
}

// class body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//           children: [
//             Container(
//               color: Colors.red,
//               width: 500,
//               height: 500,
//               child: Center(
//                 child: Text('Box 1'),
//               ),
//             ),
//           ], 
//       ),
//     );
//   }
// }

// class Page_1 extends StatelessWidget {
//   const Page_1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Page 1'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate back to first route when tapped.
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }