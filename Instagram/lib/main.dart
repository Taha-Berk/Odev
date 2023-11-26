import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deneme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              // üst kısmı
              width: double.infinity,
              height: 45,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, left: 15, right: 8, bottom: 8),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.add_box_outlined,
                            color: Colors.black45, size: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite_border_outlined,
                            color: Colors.black45, size: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8, left: 8, right: 30, bottom: 8),
                        child: Icon(Icons.maps_ugc_outlined,
                            color: Colors.black45, size: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/2.jpg", "User_1"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/3.jpg", "User_2"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/4.jpg", "User_3"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/5.jpg", "User_4"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/6.jpg", "User_5"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/2.jpg", "User_1"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/3.jpg", "User_2"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/4.jpg", "User_3"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/5.jpg", "User_4"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  StoryWidget1("assets/images/6.jpg", "User_5"),
                            ),
                          ],
                        ),
                      ),
                      postItem("İstanbul/Merter", "User_1",
                          "assets/images/2.jpg", "assets/images/p4.png"),
                      postItem("İstanbul/Merter", "User_2",
                          "assets/images/3.jpg", "assets/images/p2.png"),
                      postItem("İstanbul/Merter", "User_3",
                          "assets/images/4.jpg", "assets/images/p3.png"),
                    ],
                  ),
                ),
              ),
            ), // orta kısmı
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.home,
                      color: Colors.black45,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black45,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.subscriptions_outlined,
                      color: Colors.black45,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.local_mall,
                      color: Colors.black45,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.black45,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container postItem(
          String neighborhood, String name, String image, String post) =>
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(image),
                        radius: 25,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            neighborhood,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Image.asset(post),
            Like(),
            comment("User_10", "♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥"),
            comment("User_15", "♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥"),
            comment("User_30", "♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥"),
          ],
        ),
      );

  Padding Like() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite_border, color: Colors.black45, size: 25),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.chat_bubble_outline_outlined,
                    color: Colors.black45, size: 25),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.send_outlined, color: Colors.black45, size: 25),
              ],
            ),
            Icon(Icons.bookmark_border, color: Colors.black45, size: 25),
          ],
        ),
      ),
    );
  }

  Row comment(String name, String comment) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(text: "    "),
                TextSpan(
                  text: comment,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget StoryWidget1(String image, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.blue,
                  Colors.red,
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 35,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
