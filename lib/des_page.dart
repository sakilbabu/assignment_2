import 'package:flutter/material.dart';

import 'data_model.dart';

class DesPage extends StatelessWidget {
  final TopicModel topicModel;

  DesPage({
    Key? key,
    required this.topicModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("topics"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              topicModel.descriptions,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
