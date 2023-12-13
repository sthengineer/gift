import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List events = [
    {"avatarUrl": "https://www.hdwallpaperspulse.com/wp-content/uploads/2015/09/15/colorful-clouds-beach-sunset-landscape.jpg", "title": "header", "subTitle": "subhead", "media": ""},
    {"avatarUrl": "https://i.pinimg.com/originals/fe/63/0c/fe630cdedbfc4fb2181e96257d4c6cea.jpg", "title": "header", "subTitle": "subHead", "media": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            const Text(
              "Upcoming events",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: events.length,
              itemBuilder: (context, index) {
                var event = events[index];
                return Card(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            event["avatarUrl"],
                            fit: BoxFit.cover,
                              errorBuilder: (BuildContext context, Object exception,
                                  StackTrace? stackTrace) {
                                return Container(
                                  width: MediaQuery.of(context).size.width - (2 * 16), // Adjust width and height as needed
                                  height: 100,
                                  color:
                                  Colors.grey, // Placeholder color or error message
                                  child: const Center(
                                    child: Text('Failed to load image'),
                                  ),
                                );
                              },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          event["title"],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 40,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
