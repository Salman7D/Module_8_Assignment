import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile UI",
      theme: ThemeData(
        useMaterial3: false
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const Color primaryColor = Color(0xFF0875E1);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color textColor = Color(0xFF414B53);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(2),
            padding: EdgeInsets.fromLTRB(18, 20, 18, 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: const Offset(0, 2)
                )
              ]
            ),
            child: Column(
              children: [
                ClipOval(
                  child: Image.network('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=300',
                    width: 124,
                    height: 124,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace){
                    return Container(
                      width: 124,
                      height: 124,
                      color: Colors.grey.shade300,
                      child: const Icon(
                        Icons.person,
                        size: 70,
                        color: Colors.white,
                      ),
                    );
                    }
                  ),

                )
              ],


            ),

          )
        ],
      ),
      )
      ),

    );
  }
}

