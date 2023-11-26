import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yotube Music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Top_Bar(),
            Middle(), // orta kısmı
            Bottom_Bar(),
          ],
        ),
      ),
    );
  }

  Container Top_Bar() {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromRGBO(62, 36, 17, 1),
            const Color.fromRGBO(48, 14, 32, 1),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(width: 40, "assets/images/logo.png"),
                    SizedBox(width: 5),
                    Text(
                      "Music",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 29,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.cast,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/1.jpg"),
                      radius: 13,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Button_Bar("Energize"),
                Button_Bar("Workout"),
                Button_Bar("Feel Good"),
                Button_Bar("Relaxation"),
                Button_Bar("Chill out"),
                Button_Bar("Pop"),
                Button_Bar("Rock"),
                Button_Bar("Jazz"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container Button_Bar(String name) {
    return Container(
      padding:
          const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0),
      margin: const EdgeInsets.only(left: 3.0, right: 3.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(37, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromARGB(19, 255, 255, 255),
        ),
      ),
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Expanded Middle() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: const Color.fromRGBO(7, 5, 8, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "START RADİO FROM A SONG",
                  style: TextStyle(
                    color: Color.fromARGB(255, 187, 186, 186),
                    fontSize: 12,
                  ),
                ),
                Play_bar("Quick Picks", "Play all"),
                Cover("assets/images/c1.jpg", "Moments", "PaulWetz & Dillistone"),
                Cover("assets/images/c2.jpg", "Warrior", "Oscar & The Wolf"),
                Cover("assets/images/c3.jpg", "Cymatics", "Nigel Stanford"),
                Cover("assets/images/c4.jpg", "Burning Sun", "Monolink"),
                Cover("assets/images/c1.jpg", "Moments", "PaulWetz & Dillistone"),
                
                SizedBox(
                  height: 10,
                ),
                Play_bar("Forgotten Favorites", "Play all"),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Music_Box("assets/images/c1.jpg", "Moments", "PaulWetz & Dillistone"),
                      Music_Box("assets/images/c2.jpg", "Warrior", "Oscar & The Wolf"),
                      Music_Box("assets/images/c3.jpg", "Cymatics", "Nigel Stanford"),
                      Music_Box("assets/images/c4.jpg", "Burning Sun", "Monolink"),
                      Music_Box("assets/images/c1.jpg", "Moments", "PaulWetz & Dillistone"),
                      Music_Box("assets/images/c2.jpg", "Warrior", "Oscar & The Wolf"),
                      Music_Box("assets/images/c3.jpg", "Burning Sun", "Monolink"),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding Music_Box(String photo, String title, String artist) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          photo,
                          width: 150,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          artist,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 181, 181, 181),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
  }

  Row Play_bar(String name, String button) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 3,
              bottom: 3,
              right: 9,
              left: 9,
            ),
            child: Text(
              button,
              style: TextStyle(
                color: Color.fromARGB(255, 187, 186, 186),
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget Cover(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 70,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    artist,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 181, 181, 181),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container Bottom_Bar() {
    return Container(
      height: 60,
      width: double.infinity,
      color: Color.fromRGBO(33, 33, 33, 1),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ),
                Text(
                  "Sample",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.explore_outlined,
                  color: Colors.white,
                ),
                Text(
                  "Explore",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.library_music_outlined,
                  color: Colors.white,
                ),
                Text(
                  "Library",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                ),
                Text(
                  "Upgrade",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
