import 'package:flutter/material.dart';
import 'package:project2/des_page.dart';
import 'data_model.dart';

class TopicsPage extends StatelessWidget {
  final ClassModel classModel;

  TopicsPage({
    Key? key,
    required this.classModel,
  }) : super(key: key);
  List<String> imagesofTopic = [
    "assets/images/abstraction.jpg",
    "assets/images/encapsulation.jpg",
    "assets/images/Inheritance.jpg",
    "assets/images/Polymorphism.jpg",
    "assets/images/solid.jpg",
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
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: classModel.topics.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    final route =
                        MaterialPageRoute(builder: (BuildContext context) {
                      return DesPage(topicModel: classModel.topics[index]);
                    });
                    Navigator.push(context, route);
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Image.asset(
                            imagesofTopic[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.favorite_border),
                              Text(
                                classModel.topics[index].name,
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
