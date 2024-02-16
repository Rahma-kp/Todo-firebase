import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/controller/image_provider.dart';
import 'package:todo/controller/student_provider.dart';
import 'package:todo/view/home_screen.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options:const FirebaseOptions(
   apiKey: 'AIzaSyCzB3pmauTGtwrvsWcRIU7ZJ7R0F2G9m5U',
    appId: '1:762942263053:android:b1b8f4277b7b23e6ff6a44',
    messagingSenderId: '762942263053',
    projectId: 'student-49677',
    storageBucket: 'student-49677.appspot.com',
  )
);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => StudentProvider(),),
      ChangeNotifierProvider(create: (context) => ImageProviders(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),),
    );
  }
}