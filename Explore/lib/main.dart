import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
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
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome, K1",
                style: TextStyle(
                  color: Color.fromARGB(255, 153, 153, 153),
                  fontSize: 15,
                ),
              ),
              Text(
                "Explore Istanbul City",
                style: TextStyle(
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(6.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.sunny,
                  size: 20,
                  color: Color.fromRGBO(236, 125, 81, 1),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.notifications,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Expanded Middle() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              SearchBox(),
              Search(),
              Divider(),
              NearLocations(),
              Divider(),
              suggestion(),
              Divider(),
              TopLocations(),
              
            ],
          ),
        ),
      ),
    );
  }

  Container SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Caferağa, Kadıköy",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              color: const Color.fromRGBO(236, 125, 81, 1),
            ),
          ],
        ),
      );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            Title("Near You", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Near_Item("assets/images/p2.png","Location","7km from you","₺ 40"),
                  Near_Item("assets/images/p3.png","Location","1km from you","₺ 13"),
                  Near_Item("assets/images/p4.png","Location","3km from you","₺ 16"),
                  Near_Item("assets/images/p2.png","Location","5km from you","₺ 19"),
                ],
              ),
            ),
          ],
        ),
      );
  Widget suggestion() => Container(
        child: Column(
          children: [
            Title("Suggestions", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Near_Item("assets/images/p3.png","Location","2km from you","₺ 13"),
                  Near_Item("assets/images/p2.png","Location","3km from you","₺ 30"),
                  Near_Item("assets/images/p3.png","Location","4km from you","₺ 21"),
                  Near_Item("assets/images/p2.png","Location","5km from you","₺ 11"),
                ],
              ),
            ),
          ],
        ),
      );    

  Widget Near_Item(String image, String location , String distance ,String money) => Container(
        width: 165,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(15, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(width: 150, image),),
              SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 10,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          distance,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 125, 87, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    money,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget TopLocations() => Container(
      child: Column(
          children: [
            Title("Top Rated", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Near_Item("assets/images/p2.png","Location","2km from you","₺ 14"),
                  Near_Item("assets/images/p3.png","Location","5km from you","₺ 20"),
                  Near_Item("assets/images/p4.png","Location","7km from you","₺ 10"),
                  Near_Item("assets/images/p3.png","Location","10km from you","₺ 12"),
                ],
              ),
            ),
          ],
        ),

  );

  Widget Search() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Title("Top Walkers", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Walkers("assets/images/2.jpg", "User_1"),
                  Walkers("assets/images/3.jpg", "User_2"),
                  Walkers("assets/images/4.jpg", "User_3"),
                  Walkers("assets/images/5.jpg", "User_4"),
                  Walkers("assets/images/6.jpg", "User_5"),
                  Walkers("assets/images/2.jpg", "User_6"),
                  Walkers("assets/images/3.jpg", "User_7"),
                  Walkers("assets/images/4.jpg", "User_8"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget Walkers(String image, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 237, 128, 94),
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

  Padding Title(String name1, String name2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name1,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 17,
            ),
          ),
          Text(
            name2,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }

  Container Bottom_Bar() {
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 34,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.groups,
                  color: Colors.black54,
                  size: 34,
                ),
                Text(
                  "Moments",
                  style: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.maps_ugc,
                  color: Color.fromRGBO(236, 125, 81, 1),
                  size: 34,
                ),
                Text(
                  "Book",
                  style: TextStyle(
                      color: Color.fromRGBO(236, 125, 81, 1), fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.forum,
                  color: Colors.black54,
                  size: 34,
                ),
                Text(
                  "Chat",
                  style: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.black54,
                  size: 34,
                ),
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
