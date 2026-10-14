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
                ),

                const SizedBox(height: 9),

                const Text(
                  "John Doe",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(
                    color: Color(0xFF89929B),
                    fontSize: 14
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  "Passionate about creating user-friendly and engaging digital experiences.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 13,
                    height: 1.4
                  ),
                ),

                const SizedBox(height: 10),

                const Divider(
                  color: Color(0xFFEEEEEE),
                  height: 1,
                ),

                const SizedBox(height: 8),

                const Row(
                  children: [
                    SizedBox(width: 33),
                    Icon(
                      Icons.email,
                      size: 17,
                      color: textColor,
                    ),

                    SizedBox(width: 8),

                    Text("john.doe@example.com",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 12
                    ),
                    )
                  ],
                ),

                SizedBox(height: 6),

                const Row(
                  children: [
                    SizedBox(width: 33),
                    Icon(
                      Icons.phone,
                      color: textColor,
                      size: 17,
                    ),

                    SizedBox(width: 8),

                    Text(
                      "+123 456 7890",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 12
                      ),
                    )

                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    const Spacer(),

                    Expanded(
                        flex: 3,
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                elevation: 1,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),

                            child: Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13
                              ),
                            ),

                          ),
                        )
                    ),

                    SizedBox(width: 9),

                    Expanded(
                        flex: 3,
                        child: SizedBox(
                            height: 30,
                            child: OutlinedButton(
                                onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: textColor,
                                  padding: EdgeInsets.zero,
                                  side: const BorderSide(
                                    color: Color(0xFFD5D5D5)
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(5)
                                  )
                                ),
                                child: Text(
                                  "Message",
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                        ),


                    ),

                    const Spacer()
                  ],
                )
              ],
            ),

          ),

          SizedBox(height: 12),
          
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  const Expanded(
                      child: Divider(
                        color: Color(0xFFD6D6D6),
                      )
                  ),

                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Interests",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          
                        ),
                      ),
                  ),
                  
                  const Expanded(
                      child: Divider(
                        color: Color(0xFFD6D6D6),
                      )
                  )
                ],
              ),
          ),

          SizedBox(height: 10),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: InterestCard(
                        title: "Travel",
                        description: "Exploring new places around the world",
                        imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=500",
                      )
                  ),

                  SizedBox(width: 12),

                  Expanded(
                      child: InterestCard(
                          title: "Photography",
                          description: "Capturing moments through the lens",
                          imageUrl: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500"
                      )
                  )
                ],
              ),
          ),

          const SizedBox(height: 18)

        ],
      ),
      )
      ),

    );
  }
}

class InterestCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const InterestCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFFEEEEEE)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 4,
            offset: const Offset(0, 2)
          )
        ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(5),
          child: Image.network(
              imageUrl,
            width: double.infinity,
            height: 83,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace){
                return Container(
                  height: 83,
                  width: double.infinity,
                  color: Colors.grey.shade300,
                  child: const Icon(
                    Icons.image,
                    size: 35,
                    color: Colors.white,
                  ),
                );
            },
          ),

        ),

          SizedBox(height: 7),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: ProfilePage.textColor,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(height: 5),


        ],
      ),
    );
  }
}



