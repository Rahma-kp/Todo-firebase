import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/controller/image_provider.dart';
import 'package:todo/view/home_screen.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options:const FirebaseOptions(
  apiKey: 'AIzaSyBQ8e3cm9vO6Wc8yhqZ6E1CVJtvz-OUa_M',
    appId: '1:104142282281:android:e4429d1aa8fd4e47de4638',
    messagingSenderId: '104142282281',
    projectId: 'todo-76f0f',
    storageBucket: 'todo-76f0f.appspot.com'
  )
);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (context) => ImageProviders(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),),
    );
  }
}