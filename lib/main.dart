import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'home.dart';
import 'news.dart';
import 'profile.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const RootPage()

      
    );
    
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages =  [
    Home(),
    News(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:             
      pages[currentPage],     
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.newspaper), label: 'News&Actions'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),         
          ],
          onDestinationSelected: (int index){
            setState(() {
             currentPage = index;  
            });
            
          },
          selectedIndex: currentPage,
      ),
    );
  }
}