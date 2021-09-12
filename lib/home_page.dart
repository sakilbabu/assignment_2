import 'package:flutter/material.dart';
import 'package:project2/topics_page.dart';
import 'package:project2/data_model.dart';
import 'topics_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<ClassModel> classes = [
    ClassModel(number: 1, date: "12/09/021", topics: [
      TopicModel(
          name: "Abstraction", descriptions: "Its a very confusing topic"),
      TopicModel(name: "inheritance", descriptions: "Its a very easy topic"),
    ]),
    ClassModel(number: 2, date: "13/09/021", topics: [
      TopicModel(name: "encapsulation", descriptions: "Its a very nice topic"),
    ]),
    ClassModel(number: 3, date: "14/09/021", topics: [
      TopicModel(
          name: "polymorphism", descriptions: "Its a very difficult topic"),
    ]),
    ClassModel(number: 4, date: "15/09/021", topics: [
      TopicModel(
          name: "solid principle", descriptions: "Its a very difficult topic"),
      TopicModel(name: "S", descriptions: "Its a very difficult topic"),
      TopicModel(name: "O", descriptions: "Its a very difficult topic"),
      TopicModel(name: "L", descriptions: "Its a very difficult topic"),
      TopicModel(name: "I", descriptions: "Its a very difficult topic"),
      TopicModel(name: "D", descriptions: "Its a very difficult topic"),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutterfly"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView.builder(
            itemCount: classes.length,
            itemBuilder: (context, index) {
              return InkWell(
                  child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: InkWell(
                        onTap: () {
                          final route = MaterialPageRoute(
                              builder: (BuildContext context) {
                            return TopicsPage(
                              classModel: classes[index],
                            );
                          });
                          Navigator.push(context, route);
                        },
                        child: Column(
                          children: [
                            Image.asset("assets/images/flutter.jpg"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.favorite_border),
                                    Text(
                                      "${classes[index].number}",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ))
              ]));
            }));
  }
}
