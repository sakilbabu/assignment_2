import 'package:flutter/material.dart';
import 'package:project2/topics_page.dart';
import 'package:project2/data_model.dart';
import 'topics_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  List<Model> model = [
    Model(cls: "class no: 1", tpc: [
      "Abstraction",
      "Encapsulation",
      "Inheritance",
      "Polymorphism",
      "Solid Principle",
    ], dsc: '''Abstraction is one of the four main principles of objected oriented programming, as we discussed in the first part. Abstraction means in simple terms to hide unnecessary details.

An example would be an application; On the back-end, users don't care about what server the application is running on, how much space is being allocated(space being used) or how many api requests are being made daily. Most users only care if the application is working correctly, and there are no errors on the front-end.

In the example below, to initialize abstraction in dart; create an "abstract class" with the name of the class you want to create. And add some abstract methods, void methods, that don't return a value'''),
    Model(cls: "class no: 2", tpc: [
      "inheritance"
    ], dsc: '''Dart inheritance is defined as the process of deriving the properties and characteristics of another class. It provides the ability to create a new class from an existing class. ... Parent Class - A class which is inherited by the other class is called superclass or parent class. It is also known as a base class.'''),
    Model(cls: "class no: 3", tpc: [
      "encapsulation"
    ], dsc: '''Encapsulation is use to hide a specific property or method only making those properties accessible within the scope of the function. ... NOTE: Encapsulation in Dart happens at library level instead of class level unlike other object oriented programming languages. In Dart, (_) underscores in Dart are private.'''),
    Model(cls: "class no: 4", tpc: [
      "polymorphism"
    ], dsc: '''Polymorphism is exemplified in Dart by the @override metatag. With it, a subclass's implementation of an inherited behavior can be specialized to be appropriate to its more specific subtype. When a class has properties that are themselves instances of other classes, it's using composition to add to its abilities.'''),
    Model(cls: "class no: 5", tpc: [
      "solid principle"
    ], dsc: '''SOLID is the acronym for a set of principles that help us develop more maintainable code that also allows easy extension without compromising code already developed.

In other words ...

Write more code without damaging what already works.'''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutterfly"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView.builder(
            itemCount: model.length,
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
                              model: model[index],
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
                                      model[index].cls,
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
