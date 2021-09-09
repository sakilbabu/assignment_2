import 'package:flutter/material.dart';
import 'package:project2/Topics.dart';
import 'package:project2/data.dart';

import 'Topics.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  List<Model> model = [
    Model(
        cls: "class 1",
        tpc: [
          "abstraction",
          "dfhdgfhsd",
          "gib",
          "hip",
          "hip",
        ],
        dsc: "blah blah "),
    Model(cls: "class 2", tpc: ["inheritance"], dsc: "blah blah "),
    Model(cls: "class 3", tpc: ["encapsulation"], dsc: "blah blah "),
    Model(cls: "class 4", tpc: ["polymorphysm"], dsc: "blah blah "),
    Model(cls: "class 5", tpc: ["solid principle"], dsc: "blah blah "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("dhgdf"),
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
                  padding: EdgeInsets.fromLTRB(00, 20, 00, 10),
                  child: ElevatedButton(
                    onPressed: () {
                      final route =
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Topic(
                          model: model[index],
                        );
                      });
                      Navigator.push(context, route);
                    },
                    child: Text(model[index].cls),
                  ),
                )
              ]));
            }));
  }
}
