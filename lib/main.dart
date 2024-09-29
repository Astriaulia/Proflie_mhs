import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 25),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/image/astri.jpg'),
            ),
            const SizedBox(height: 10),
            itemProfile(
                'Name Lengkap', 'Astri Aulia Fajriati', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile(
              'NIM',
              '212225007',
              CupertinoIcons.cube_box,
            ),
            const SizedBox(height: 10),
            itemProfile('Program Studi', 'Informatika', CupertinoIcons.command),
            const SizedBox(height: 10),
            itemProfile('Fakultas', 'Matermatika Dan Ilmu Komputer',
                CupertinoIcons.command),
            const SizedBox(height: 10),
            itemProfile('Alamat', 'Karang Maja Planjan Kesugihan ',
                CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile(
                'Email', 'astriauliafajriati@gmail.com', CupertinoIcons.mail),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 197, 202, 242),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: const Color.fromARGB(255, 63, 104, 165).withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: const Icon(Icons.arrow_forward,
            color: Color.fromARGB(255, 75, 91, 155)),
        tileColor: Colors.white,
      ),
    );
  }
}
