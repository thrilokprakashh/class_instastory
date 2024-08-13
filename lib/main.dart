import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        "name": "John",
        "dp":
            "https://images.pexels.com/photos/27439406/pexels-photo-27439406/free-photo-of-a-cup-of-coffee-sits-on-a-bed-with-pillows.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
        "bg":
            "https://images.pexels.com/photos/3593922/pexels-photo-3593922.jpeg?auto=compress&cs=tinysrgb&w=1200"
      },
      {
        "name": "Alice",
        "dp":
            "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
        "bg":
            "https://images.pexels.com/photos/1689731/pexels-photo-1689731.jpeg?auto=compress&cs=tinysrgb&w=1200"
      },
      {
        "name": "Michael",
        "dp":
            "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
        "bg":
            "https://images.pexels.com/photos/730474/pexels-photo-730474.jpeg?auto=compress&cs=tinysrgb&w=1200"
      },
      {
        "name": "Sophia",
        "dp":
            "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
        "bg":
            "https://images.pexels.com/photos/953129/pexels-photo-953129.jpeg?auto=compress&cs=tinysrgb&w=1200"
      },
      {
        "name": "Daniel",
        "dp":
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
        "bg":
            "https://images.pexels.com/photos/2968784/pexels-photo-2968784.jpeg?auto=compress&cs=tinysrgb&w=1200"
      },
      {
        "name": "Emma",
        "dp":
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
        "bg":
            "https://images.pexels.com/photos/1671643/pexels-photo-1671643.jpeg?auto=compress&cs=tinysrgb&w=1200"
      }
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: PageView.builder(
            itemCount: myDataList.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(myDataList[index]["bg"]),
                ),
              ),
              child: Column(
                children: [
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myDataList[index]["dp"]),
                    ),
                    title: Text(
                      myDataList[index]["name"],
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "User.name",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(width: 1.5, color: Colors.white)),
                          child: Text(
                            "Send message",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
