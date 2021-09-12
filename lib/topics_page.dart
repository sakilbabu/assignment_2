import 'package:flutter/material.dart';
import 'package:project2/des_page.dart';
import 'data_model.dart';

class TopicsPage extends StatelessWidget {
  final Model model;

  TopicsPage({
    Key? key,
    required this.model,
  }) : super(key: key);
  List<String> imagesofTopic = [
    "assets/images/abstraction.jpg",
    "assets/images/encapsulation.jpg",
    "assets/images/Inheritance.jpg",
    "assets/images/Polymorphism.jpg",
    "assets/images/solid.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text("Topics"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: model.tpc.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.lightBlueAccent,
                  child: InkWell(
                    onTap: () {
                      final route =
                          MaterialPageRoute(builder: (BuildContext context) {
                        return DesPage(model: model);
                      });
                      Navigator.push(context, route);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          imagesofTopic[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.favorite_border),
                              Text(
                                model.tpc[index],
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
